import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:people_index/core/data/error/failures/failure.dart';
import 'package:people_index/core/domain/use_cases/use_case.dart';
import 'package:people_index/features/people/domain/entities/person.dart';
import 'package:people_index/features/people/domain/repositories/people_repository.dart';

@injectable
class GetPersonDetailsUseCase
    extends UseCase<Future<Either<Failure, Person>>, int> {
  GetPersonDetailsUseCase(this._repository);

  final PeopleRepository _repository;

  @override
  Future<Either<Failure, Person>> call(int params) =>
      _repository.getPersonDetails(id: params);
}
