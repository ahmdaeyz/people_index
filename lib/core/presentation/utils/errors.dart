import 'package:people_index/core/data/error/failures/client_failure.dart'
    as client;
import 'package:people_index/core/data/error/failures/failure.dart';
import 'package:people_index/core/data/error/failures/server_failure.dart'
    as server;
import 'package:people_index/generated/l10n.dart';

T errorStateFrom<T>(
  Failure failure, {
  required T Function(Type type, String message, bool isAction) determineError,
}) {
  if (failure is client.ClientFailure) {
    return failure.when(
      unknown: (message, isAction) =>
          determineError(client.Unknown, message, isAction),
      unauthorizedAccess: (isAction) =>
          determineError(client.UnAuthorizedAccess, "", isAction),
      networkError: (message, isAction) =>
          determineError(client.NetworkError, message, isAction),
      resourceNotFound: (message, isAction) =>
          determineError(client.ResourceNotFound, message, isAction),
      badRequest: (message, isAction) =>
          determineError(client.BadRequest, message, isAction),
      forbiddenAccess: (message, isAction) =>
          determineError(client.ForbiddenAccess, message, isAction),
    );
  } else if (failure is server.ServerFailure) {
    return failure.when(
      unknown: (message, isAction) =>
          determineError(server.Unknown, message, isAction),
      internalError: (message, isAction) =>
          determineError(server.InternalError, message, isAction),
      serviceUnavailable: (message, isAction) => determineError(
        server.ServiceUnavailable,
        message,
        isAction,
      ),
    );
  } else {
    return determineError(
      GenericFailure,
      S.current.somethingIsWrong,
      (failure as GenericFailure).isAction,
    );
  }
}
