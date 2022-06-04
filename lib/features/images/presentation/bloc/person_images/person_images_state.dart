import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:people_index/features/images/domain/entities/person_image.dart';

part 'person_images_state.freezed.dart';

@freezed
abstract class PersonImagesState with _$PersonImagesState {
  const factory PersonImagesState.initial() = Initial;

  const factory PersonImagesState.loading() = Loading;

  const factory PersonImagesState.loadedPersonImages(
      {required List<PersonImage> data}) = LoadedPersonImages;

  const factory PersonImagesState.error({required String message}) = Error;
}
