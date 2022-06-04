import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:people_index/core/domain/pagination/pagination_params.dart';
import 'package:people_index/core/presentation/utils/errors.dart';
import 'package:people_index/features/people/domain/entities/person.dart';
import 'package:people_index/features/people/domain/use_cases/get_popular_people_use_case.dart';
import 'package:people_index/features/people/presentation/bloc/popular_people/popular_people_state.dart';

@injectable
class PopularPeopleCubit extends Cubit<PopularPeopleState> {
  PopularPeopleCubit(this._getPopularPeopleUseCase)
      : super(const PopularPeopleState.initial());

  final GetPopularPeopleUseCase _getPopularPeopleUseCase;

  bool get canLoadMore => _canLoadMore;
  bool _canLoadMore = false;

  int get currentPage => _currentPage;
  int _currentPage = 1;

  final List<Person> _people = [];

  Future<void> getPopularPeople() async {
    _currentPage = 1;
    _people.clear();
    emit(const PopularPeopleState.loading());
    await _getPopularPeople();
  }

  Future<void> getMorePopularPeople() async {
    emit(const PopularPeopleState.paginating());
    await _getPopularPeople(pageNum: _currentPage);
  }

  Future<void> _getPopularPeople({
    int pageNum = 1,
  }) async {
    _canLoadMore = false;
    final result = await _getPopularPeopleUseCase(
      PaginationParams(
        pageNum: pageNum,
      ),
    );
    emit(
      result.fold((failure) {
        return errorStateFrom(
          failure,
          determineError: (type, message, isAction) {
            return isAction
                ? PopularPeopleState.actionError(message: message)
                : PopularPeopleState.error(message: message);
          },
        );
      }, (peoplePage) {
        if (peoplePage.isLastPage) {
          _canLoadMore = false;
        } else {
          _currentPage++;
          _canLoadMore = true;
        }
        _people.addAll(peoplePage.items);
        return PopularPeopleState.loadedPopularPeople(data: _people);
      }),
    );
  }
}
