import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:people_index/features/people/data/data_sources/people_data_source.dart';
import 'package:people_index/features/people/data/models/person_model.dart';
import 'package:people_index/features/people/data/services/people_database.dart';

@LazySingleton(as: PeopleLocalDataSource)
class PeopleLocalDataSourceImpl implements PeopleLocalDataSource {
  PeopleLocalDataSourceImpl(this._db);

  final PeopleDatabase _db;

  @override
  Future<Tuple2<List<PersonModel>, bool>> getPopularPeople({
    int page = 1,
  }) async {
    final availablePeople =
        await _db.db.where().offset((page - 1) * 20).limit(20).findAll();
    return Tuple2(availablePeople, availablePeople.isEmpty);
  }

  @override
  Future<void> cachePeople(List<PersonModel> cacheablePeople) async {
    await _db.isar.writeTxn(() async {
      await _db.db.putAll(cacheablePeople);
    });
  }
}

abstract class PeopleLocalDataSource implements PeopleDataSource {
  Future<void> cachePeople(List<PersonModel> cacheablePeople);
}
