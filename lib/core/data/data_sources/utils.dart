import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:people_index/core/data/error/exceptions/application_exception.dart';
import 'package:people_index/generated/l10n.dart';

Future<T> resolveOrThrow<T>(
  Future<T> Function() target, {
  String? context,
}) async {
  final logger = Logger();
  try {
    return await target();
  } on DioError catch (e) {
    dioErrorDecoder(e, context ?? '');
  } on Exception catch (e, s) {
    if (kDebugMode) {
      logger.e('DataSourceError:\n $e', s);
    }
    throw GenericApplicationException(message: S.current.somethingIsWrong);
  } catch (e, s) {
    if (kDebugMode) {
      logger.e('DataSourceError:\n $e', s);
    }
    throw GenericApplicationException(message: S.current.somethingIsWrong);
  }
  throw GenericApplicationException(message: S.current.somethingIsWrong);
}
