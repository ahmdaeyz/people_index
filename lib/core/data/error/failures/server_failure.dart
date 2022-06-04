import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:people_index/core/data/error/failures/failure.dart';

part 'server_failure.freezed.dart';

@freezed
abstract class ServerFailure extends Failure with _$ServerFailure {
  const factory ServerFailure.unknown({
    required String message,
    @Default(false) bool isAction,
  }) = Unknown;

  const factory ServerFailure.internalError({
    required String message,
    @Default(false) bool isAction,
  }) = InternalError;

  const factory ServerFailure.serviceUnavailable({
    required String message,
    @Default(false) bool isAction,
  }) = ServiceUnavailable;
}
