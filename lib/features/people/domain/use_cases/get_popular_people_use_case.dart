import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:people_index/core/data/error/failures/failure.dart';
import 'package:people_index/core/domain/pagination/page.dart';
import 'package:people_index/core/domain/pagination/pagination_params.dart';
import 'package:people_index/core/domain/use_cases/use_case.dart';
import 'package:people_index/features/people/domain/entities/person.dart';
import 'package:people_index/features/people/domain/repositories/people_repository.dart';

@injectable
class GetPopularPeopleUseCase
    extends UseCase<Future<Either<Failure, Page<Person>>>, PaginationParams> {
  GetPopularPeopleUseCase(this._repository);

  final PeopleRepository _repository;

  @override
  Future<Either<Failure, Page<Person>>> call(PaginationParams params) =>
      _repository.getPopularPeople(page: params.pageNum);
}
