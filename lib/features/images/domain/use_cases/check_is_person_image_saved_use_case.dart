import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:people_index/core/data/error/failures/failure.dart';
import 'package:people_index/core/domain/use_cases/use_case.dart';
import 'package:people_index/features/images/domain/repositories/images_repository.dart';

@injectable
class CheckIsPersonImageSavedUseCase
    extends UseCase<Future<Either<Failure, bool>>, String> {
  CheckIsPersonImageSavedUseCase(this._repository);

  final ImagesRepository _repository;

  @override
  Future<Either<Failure, bool>> call(String params) =>
      _repository.isPersonImageSaved(imageUrl: params);
}
