import 'package:dartz/dartz.dart';
import 'package:people_index/features/people/data/models/person_model.dart';

// ignore: one_member_abstracts
abstract class PeopleDataSource {
  Future<Tuple2<List<PersonModel>, bool>> getPopularPeople({int page = 1});
}
