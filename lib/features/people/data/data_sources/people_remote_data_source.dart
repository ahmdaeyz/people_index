import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:people_index/core/application/di/injection_container.dart';
import 'package:people_index/core/data/config/app_config.dart';
import 'package:people_index/core/data/data_sources/utils.dart';
import 'package:people_index/features/people/data/data_sources/people_data_source.dart';
import 'package:people_index/features/people/data/models/person_model.dart';
import 'package:people_index/features/people/data/services/people_api_service.dart';
import 'package:people_index/features/people/data/services/people_database.dart';

@LazySingleton(
  as: PeopleDataSource,
)
class PeopleRemoteDataSource implements PeopleDataSource {
  PeopleRemoteDataSource(
    this._apiService,
  );

  final PeopleAPIService _apiService;

  @override
  Future<Tuple2<List<PersonModel>, bool>> getPopularPeople({int page = 1}) =>
      resolveOrThrow(() async {
        final imagesBaseUrl = getIt<AppConfig>().imagesBaseUrl;
        final response = await _apiService.getPopularPeople(page: page);
        return Tuple2(
          response.results!
              .map(
                (e) => PersonModel(
                  id: e.id!,
                  popularity: e.popularity ?? 0,
                  name: e.name ?? '',
                  imageUrl: imagesBaseUrl + (e.profilePath ?? ''),
                ),
              )
              .toList(),
          page == response.totalPages,
        );
      });
}
