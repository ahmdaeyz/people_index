import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:people_index/core/data/constants/constants.dart';
import 'package:people_index/features/images/data/models/get_person_images_api_response.dart';
import 'package:retrofit/retrofit.dart';

part 'images_api_service.g.dart';

@RestApi()
@injectable
abstract class ImagesAPIService {
  @factoryMethod
  factory ImagesAPIService(Dio dio) = _ImagesAPIService;

  @GET('$kPersonDetailsEndpoint/{id}/$kImagesEndpoint')
  Future<GetPersonImagesApiResponse> getPersonImages({
    @Path() required int id,
  });
}
