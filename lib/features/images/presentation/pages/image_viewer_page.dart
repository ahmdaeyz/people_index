import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:people_index/core/application/di/injection_container.dart';
import 'package:people_index/core/presentation/hooks/bloc.dart';
import 'package:people_index/core/presentation/utils/snackbar.dart';
import 'package:people_index/core/presentation/widgets/cached_image.dart';
import 'package:people_index/features/images/domain/entities/person_image.dart';
import 'package:people_index/features/images/presentation/bloc/image_saver/image_saver_cubit.dart';
import 'package:people_index/features/images/presentation/bloc/image_saver/image_saver_state.dart';
import 'package:people_index/features/images/presentation/widgets/download_button.dart';
import 'package:people_index/l10n/l10n.dart';

class ImageViewerPage extends HookWidget {
  const ImageViewerPage({super.key, required this.image});

  final PersonImage image;

  @override
  Widget build(BuildContext context) {
    final cubit = useBloc< ImageSaverCubit,ImageSaverState>(
      () => getIt<ImageSaverCubit>()
        ..checkIsImageSaved(
          imageUrl: image.imageUrl,
        ),
    );
    final buttonTapped = useState(false);
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: BackButton(
            onPressed: () {
              context.pop();
            },
          ),
          actions: [
            BlocConsumer<ImageSaverCubit, ImageSaverState>(
              bloc: cubit,
              listener: (context, state) => listenForStateChanges(
                context,
                state,
                downloadButtonClicked: buttonTapped.value,
              ),
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const Center(
                    child: SizedBox(
                      height: 18,
                      width: 18,
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(end: 8),
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  savingStatus: (saved) => saved
                      ? const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.download_done,
                            color: Colors.white,
                          ),
                        )
                      : DownloadButton(
                          onTap: () {
                            cubit.saveImage(imageUrl: image.imageUrl);
                          },
                        ),
                  orElse: () => DownloadButton(
                    onTap: () {
                      cubit.saveImage(imageUrl: image.imageUrl);
                    },
                  ),
                );
              },
            )
          ],
        ),
        body: Hero(
          tag: image.imageUrl,
          child: CachedImage(imageUrl: image.imageUrl),
        ),
      ),
    );
  }

  Object? listenForStateChanges(
    BuildContext context,
    ImageSaverState state, {
    required bool downloadButtonClicked,
  }) {
    return state.maybeWhen(
      error: (message) => showSnackBar(message, context),
      savingStatus: (saved) {
        if (!saved && downloadButtonClicked) {
          showSnackBar(context.l10n.failedToSaveImage, context);
        } else if (saved) {
          showSnackBar(context.l10n.imageSavedToGallery, context);
        }
        return null;
      },
      orElse: () => null,
    );
  }
}
