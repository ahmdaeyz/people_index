import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_saver_state.freezed.dart';

@freezed
abstract class ImageSaverState with _$ImageSaverState {
  const factory ImageSaverState.initial() = Initial;

  const factory ImageSaverState.loading() = Loading;

  const factory ImageSaverState.savingStatus({required bool saved}) =
      SavingStatus;

  const factory ImageSaverState.error({required String message}) = Error;
}
