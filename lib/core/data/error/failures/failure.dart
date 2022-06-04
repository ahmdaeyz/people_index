import 'package:flutter/foundation.dart';
import 'package:people_index/core/data/error/exceptions/application_exception.dart';
import 'package:people_index/core/data/error/exceptions/client_exception.dart';
import 'package:people_index/core/data/error/exceptions/server_exception.dart';
import 'package:people_index/core/data/error/failures/client_failure.dart';
import 'package:people_index/core/data/error/failures/server_failure.dart';
import 'package:people_index/generated/l10n.dart';

abstract class Failure {}

/// Can be used when the list of exceptions is exhausted. Also, It maps to [GenericApplicationException].
class GenericFailure extends Failure {
  GenericFailure({required this.message, this.isAction = false});

  final String message;
  final bool isAction;
}

Failure dioExceptionsDecoder(
    ApplicationException e, VoidCallback unauthorizedAccessHandler,
    {bool Function()? isAction}) {
  final isAnAction = isAction != null && isAction.call();
  if (e is ClientException) {
    return e.when(
      unknown: (message) =>
          ClientFailure.unknown(message: message, isAction: isAnAction),
      resourceNotFound: (resourceName, message) =>
          ClientFailure.resourceNotFound(
              message: message, isAction: isAnAction),
      unauthorizedAccess: () {
        unauthorizedAccessHandler();
        return ClientFailure.unauthorizedAccess(isAction: isAnAction);
      },
      networkError: (String message) =>
          ClientFailure.networkError(message: message, isAction: isAnAction),
      badRequest: (message) =>
          ClientFailure.badRequest(message: message, isAction: isAnAction),
      forbiddenAccess: (String message) => ClientFailure.forbiddenAccess(
        message: message,
        isAction: isAnAction,
      ),
    );
  } else if (e is ServerException) {
    return e.when(
      unknown: (message) =>
          ServerFailure.unknown(message: message, isAction: isAnAction),
      internalError: (message) =>
          ServerFailure.internalError(message: message, isAction: isAnAction),
      serviceUnavailable: (message) => ServerFailure.serviceUnavailable(
        message: message,
        isAction: isAnAction,
      ),
    );
  } else {
    return GenericFailure(
        message: S.current.somethingIsWrong, isAction: isAnAction);
  }
}
