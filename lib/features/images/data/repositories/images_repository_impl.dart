import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:people_index/core/data/error/failures/failure.dart';
import 'package:people_index/core/data/repostories/utils.dart';
import 'package:people_index/features/images/data/data_sources/images_local_data_source.dart';
import 'package:people_index/features/images/data/data_sources/images_remote_data_source.dart';
import 'package:people_index/features/images/data/mappers/get_person_images_api_response.dart';
import 'package:people_index/features/images/domain/entities/person_image.dart';
import 'package:people_index/features/images/domain/repositories/images_repository.dart';

@LazySingleton(as: ImagesRepository)
class ImagesRepositoryImpl implements ImagesRepository {
  ImagesRepositoryImpl(
    this._imagesRemoteDataSource,
    this._imagesLocalDataSource,
  );

  final ImagesRemoteDataSource _imagesRemoteDataSource;
  final ImagesLocalDataSource _imagesLocalDataSource;

  @override
  Future<Either<Failure, List<PersonImage>>> getPersonImages({
    required int id,
  }) async =>
      conclude(
        () async =>
            (await _imagesRemoteDataSource.getPersonImages(id: id)).domain,
      );

  @override
  Future<Either<Failure, bool>> savePersonImage({required String imageUrl}) =>
      conclude(
        () async {
          final saved =
              await _imagesRemoteDataSource.savePersonImage(imageUrl: imageUrl);
          if (saved) {
            await _imagesLocalDataSource.markSaved(imageUrl: imageUrl);
          }
          return saved;
        },
      );

  @override
  Future<Either<Failure, bool>> isPersonImageSaved(
          {required String imageUrl}) =>
      conclude(() {
        return _imagesLocalDataSource.isSaved(imageUrl: imageUrl);
      });
}
