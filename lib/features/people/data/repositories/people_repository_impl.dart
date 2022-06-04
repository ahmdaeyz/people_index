import 'package:async/async.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:people_index/core/data/error/failures/failure.dart';
import 'package:people_index/core/data/repostories/utils.dart';
import 'package:people_index/core/domain/pagination/page.dart';
import 'package:people_index/features/people/data/data_sources/people_data_source.dart';
import 'package:people_index/features/people/data/data_sources/people_local_data_source.dart';
import 'package:people_index/features/people/data/data_sources/person_details_data_source.dart';
import 'package:people_index/features/people/data/mappers/person_model.dart';
import 'package:people_index/features/people/data/services/people_database.dart';
import 'package:people_index/features/people/domain/entities/person.dart';
import 'package:people_index/features/people/domain/repositories/people_repository.dart';

@LazySingleton(as: PeopleRepository)
class PeopleRepositoryImpl implements PeopleRepository {
  PeopleRepositoryImpl(this._peopleRemoteDataSource,
      this._personDetailsRemoteDataSource, this._peopleLocalDataSource);

  final PeopleDataSource _peopleRemoteDataSource;
  final PeopleLocalDataSource _peopleLocalDataSource;
  final PersonDetailsDataSource _personDetailsRemoteDataSource;

  @override
  Future<Either<Failure, Page<Person>>> getPopularPeople({int page = 1}) =>
      conclude(() async {
        final hasInternetConnection =
            await InternetConnectionChecker().hasConnection;
        final group = FutureGroup<Tuple2<List<PersonModel>, bool>>();
        if (hasInternetConnection) {
          final data =
              await _peopleRemoteDataSource.getPopularPeople(page: page);
          await _peopleLocalDataSource.cachePeople(data.value1);
          group.add(Future.value(data));
        } else {
          group.add(_peopleLocalDataSource.getPopularPeople(page: page));
        }
        group.close();
        final result = (await group.future).first;
        return Page(
          items: result.value1.map((e) => e.domain).toList(),
          isLastPage: result.value2,
        );
      });

  @override
  Future<Either<Failure, Person>> getPersonDetails({required int id}) =>
      conclude(
        () async =>
            (await _personDetailsRemoteDataSource.getPersonDetails(id: id))
                .domain,
      );
}
