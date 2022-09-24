import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:people_index/features/people/data/models/person_model.dart';

@LazySingleton()
class PeopleDatabase {
  PeopleDatabase() {
    isar = _openConnection();
    db = isar.personModels;
  }

  late final IsarCollection<PersonModel> db;
  late final Isar isar;
}

Isar _openConnection() {
  final isar = Isar.openSync([PersonModelSchema]);

  return isar;
}
