import 'package:people_index/features/images/data/models/get_person_images_api_response.dart';

abstract class ImagesRemoteDataSource {
  Future<GetPersonImagesApiResponse> getPersonImages({required int id});

  Future<bool> savePersonImage({required String imageUrl});
}
