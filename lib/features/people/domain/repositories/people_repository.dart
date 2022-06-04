import 'package:dartz/dartz.dart';
import 'package:people_index/core/data/error/failures/failure.dart';

import 'package:people_index/core/domain/pagination/page.dart';
import 'package:people_index/features/people/domain/entities/person.dart';

abstract class PeopleRepository {
  Future<Either<Failure, Page<Person>>> getPopularPeople({int page = 1});

  Future<Either<Failure, Person>> getPersonDetails({required int id});
}
