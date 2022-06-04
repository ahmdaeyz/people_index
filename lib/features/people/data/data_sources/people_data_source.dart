import 'package:dartz/dartz.dart';
import 'package:people_index/features/people/data/services/people_database.dart';

// ignore: one_member_abstracts
abstract class PeopleDataSource {
  Future<Tuple2<List<PersonModel>, bool>> getPopularPeople({int page = 1});
}
