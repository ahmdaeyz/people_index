import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:people_index/core/data/error/failures/failure.dart';
import 'package:people_index/core/domain/use_cases/use_case.dart';
import 'package:people_index/features/images/domain/entities/person_image.dart';
import 'package:people_index/features/images/domain/repositories/images_repository.dart';

@injectable
class GetPersonImagesUseCase
    extends UseCase<Future<Either<Failure, List<PersonImage>>>, int> {
  GetPersonImagesUseCase(this._repository);

  final ImagesRepository _repository;

  @override
  Future<Either<Failure, List<PersonImage>>> call(int params) =>
      _repository.getPersonImages(id: params);
}
