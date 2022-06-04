import 'package:injectable/injectable.dart';
import 'package:people_index/core/data/data_sources/utils.dart';
import 'package:people_index/features/images/data/data_sources/images_remote_data_source.dart';
import 'package:people_index/features/images/data/models/get_person_images_api_response.dart';
import 'package:people_index/features/images/data/services/images_api_service.dart';
import 'package:people_index/features/images/data/services/person_image_saver_service.dart';

@LazySingleton(as: ImagesRemoteDataSource)
class ImagesRemoteDataSourceImpl implements ImagesRemoteDataSource {
  ImagesRemoteDataSourceImpl(this._imageSaverService, this._apiService);

  final PersonImageSaverService _imageSaverService;
  final ImagesAPIService _apiService;

  @override
  Future<GetPersonImagesApiResponse> getPersonImages({required int id}) =>
      resolveOrThrow(() => _apiService.getPersonImages(id: id));

  @override
  Future<bool> savePersonImage({required String imageUrl}) => resolveOrThrow(
        () => _imageSaverService.savedPersonImage(imageUrl: imageUrl),
      );
}
