import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:people_index/core/data/constants/constants.dart';
import 'package:people_index/features/people/data/models/get_people_api_response.dart';
import 'package:people_index/features/people/data/models/get_person_details_api_response.dart';
import 'package:retrofit/retrofit.dart';

part 'people_api_service.g.dart';

@RestApi()
@injectable
abstract class PeopleAPIService {
  @factoryMethod
  factory PeopleAPIService(Dio dio) = _PeopleAPIService;

  @GET(kPeopleEndpoint)
  Future<GetPeopleApiResponse> getPopularPeople({@Query('page') int page = 1});

  @GET('$kPersonDetailsEndpoint/{id}')
  Future<GetPersonDetailsApiResponse> getPersonDetails({
    @Path() required int id,
  });
}
