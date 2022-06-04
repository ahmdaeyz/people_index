import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:people_index/core/presentation/utils/errors.dart';
import 'package:people_index/features/images/domain/use_cases/check_is_person_image_saved_use_case.dart';
import 'package:people_index/features/images/domain/use_cases/save_person_image_use_case.dart';
import 'package:people_index/features/images/presentation/bloc/image_saver/image_saver_state.dart';

@injectable
class ImageSaverCubit extends Cubit<ImageSaverState> {
  ImageSaverCubit(
      this._savePersonImageUseCase, this._checkIsPersonImageSavedUseCase)
      : super(const ImageSaverState.initial());

  final SavePersonImageUseCase _savePersonImageUseCase;
  final CheckIsPersonImageSavedUseCase _checkIsPersonImageSavedUseCase;

  Future<void> saveImage({required String imageUrl}) async {
    emit(const ImageSaverState.loading());
    final response = await _savePersonImageUseCase(imageUrl);

    emit(
      response.fold(
        (l) => errorStateFrom(
          l,
          determineError: (_, message, __) =>
              ImageSaverState.error(message: message),
        ),
        (r) => ImageSaverState.savingStatus(saved: r),
      ),
    );
  }

  Future<void> checkIsImageSaved({required String imageUrl}) async {
    emit(const ImageSaverState.loading());
    final response = await _checkIsPersonImageSavedUseCase(imageUrl);

    emit(
      response.fold(
        (l) => errorStateFrom(
          l,
          determineError: (_, message, __) =>
              ImageSaverState.error(message: message),
        ),
        (r) => ImageSaverState.savingStatus(saved: r),
      ),
    );
  }
}
