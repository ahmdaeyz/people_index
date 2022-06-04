import 'package:injectable/injectable.dart';
import 'package:people_index/core/application/di/injection_container.dart';
import 'package:people_index/core/data/config/app_config.dart';
import 'package:people_index/core/data/data_sources/utils.dart';
import 'package:people_index/features/people/data/data_sources/person_details_data_source.dart';
import 'package:people_index/features/people/data/services/people_api_service.dart';
import 'package:people_index/features/people/data/services/people_database.dart';

@LazySingleton(as: PersonDetailsDataSource)
class PersonDetailsRemoteDataSource implements PersonDetailsDataSource {
  PersonDetailsRemoteDataSource(this._apiService);

  final PeopleAPIService _apiService;

  @override
  Future<PersonModel> getPersonDetails({required int id}) =>
      resolveOrThrow(() async {
        final imagesBaseUrl = getIt<AppConfig>().imagesBaseUrl;
        final response = await _apiService.getPersonDetails(id: id);
        return PersonModel(
          id: response.id!,
          popularity: response.popularity ?? 0,
          name: response.name ?? '',
          imageUrl: imagesBaseUrl + (response.profilePath ?? ''),
          biography: response.biography,
          knownFor: response.knownForDepartment,
        );
      });
}
