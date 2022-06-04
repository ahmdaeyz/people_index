// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:people_index/core/data/error/exceptions/application_exception.dart';

part 'client_exception.freezed.dart';

@freezed
abstract class ClientException extends ApplicationException
    with _$ClientException {
  const factory ClientException.unknown({required String message}) = Unknown;

  const factory ClientException.resourceNotFound({
    required String resourceName,
    required String message,
  }) = ResourceNotFound;

  const factory ClientException.unauthorizedAccess() = UnAuthorizedAccess;

  const factory ClientException.forbiddenAccess({required String message}) =
      ForbiddenAccess;

  const factory ClientException.networkError({required String message}) =
      NetworkError;

  const factory ClientException.badRequest({required String message}) =
      BadRequest;
}
