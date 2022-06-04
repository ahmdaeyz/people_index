import 'package:dartz/dartz.dart';
import 'package:people_index/core/data/error/exceptions/application_exception.dart';
import 'package:people_index/core/data/error/failures/failure.dart';

Future<Either<Failure, R>> conclude<R>(
  Future<R> Function() target, {
  String? context,
}) async {
  try {
    return Right(await target());
  } on ApplicationException catch (e) {
    return Left(
      dioExceptionsDecoder(e, () {}),
    );
  }
}
