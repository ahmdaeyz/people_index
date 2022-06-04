import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:people_index/features/people/data/data_sources/people_data_source.dart';
import 'package:people_index/features/people/data/models/person_model.dart';
import 'package:people_index/features/people/data/services/people_database.dart';

part 'people_local_data_source.g.dart';

@DriftAccessor(tables: [People])
@LazySingleton(as: PeopleLocalDataSource)
class PeopleLocalDataSourceImpl extends DatabaseAccessor<PeopleDatabase>
    with _$PeopleLocalDataSourceImplMixin
    implements PeopleLocalDataSource {
  PeopleLocalDataSourceImpl(super.db);

  @override
  Future<Tuple2<List<PersonModel>, bool>> getPopularPeople({
    int page = 1,
  }) async {
    final availablePeople =
        await (select(people)..limit(20, offset: (page - 1) * 20)).get();
    return Tuple2(availablePeople, availablePeople.isEmpty);
  }

  @override
  Future<void> cachePeople(List<PersonModel> cacheablePeople) async {
    await batch(
      (batch) => batch.insertAllOnConflictUpdate(people, cacheablePeople),
    );
  }
}

abstract class PeopleLocalDataSource implements PeopleDataSource {
  Future<void> cachePeople(List<PersonModel> cacheablePeople);
}
