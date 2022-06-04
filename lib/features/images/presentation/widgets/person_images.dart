import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:people_index/core/application/di/injection_container.dart';
import 'package:people_index/core/presentation/hooks/bloc.dart';
import 'package:people_index/core/presentation/widgets/loading.dart';
import 'package:people_index/features/images/presentation/bloc/person_images/person_images_cubit.dart';
import 'package:people_index/features/images/presentation/bloc/person_images/person_images_state.dart';
import 'package:people_index/features/images/presentation/widgets/person_images_grid_view.dart';

class PersonImages extends HookWidget {
  const PersonImages({
    super.key,
    required this.height,
    required this.id,
  });

  final double height;
  final int id;

  @override
  Widget build(BuildContext context) {
    final imagesCubit = useBloc<PersonImagesCubit, PersonImagesState>(
      () => getIt<PersonImagesCubit>()..getPersonImages(id: id),
    );
    return BlocBuilder<PersonImagesCubit, PersonImagesState>(
      bloc: imagesCubit,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const LoadingIndicator(),
          loadedPersonImages: (images) => SizedBox(
            height: height,
            child: PersonImagesGridView(
              images: images,
            ),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
