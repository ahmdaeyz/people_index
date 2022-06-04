import 'package:drift/drift.dart';

@DataClassName('PersonModel')
class People extends Table {
  IntColumn get id => integer()();

  RealColumn get popularity => real()();

  TextColumn get name => text()();

  TextColumn get imageUrl => text()();

  TextColumn get biography => text().nullable()();

  TextColumn get knownFor => text().nullable()();

  @override
  Set<Column>? get primaryKey => {id};
}
