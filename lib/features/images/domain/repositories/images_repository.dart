import 'package:dartz/dartz.dart';
import 'package:people_index/core/data/error/failures/failure.dart';
import 'package:people_index/features/images/domain/entities/person_image.dart';

abstract class ImagesRepository {
  Future<Either<Failure, List<PersonImage>>> getPersonImages({required int id});

  Future<Either<Failure, bool>> savePersonImage({required String imageUrl});

  Future<Either<Failure, bool>> isPersonImageSaved({required String imageUrl});
}
