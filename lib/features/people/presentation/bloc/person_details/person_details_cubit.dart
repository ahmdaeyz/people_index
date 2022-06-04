import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:people_index/core/presentation/utils/errors.dart';
import 'package:people_index/features/people/domain/use_cases/get_person_details_use_case.dart';
import 'package:people_index/features/people/presentation/bloc/person_details/person_details_state.dart';

@injectable
class PersonDetailsCubit extends Cubit<PersonDetailsState> {
  PersonDetailsCubit(this._getPersonDetailsUseCase)
      : super(const PersonDetailsState.initial());
  final GetPersonDetailsUseCase _getPersonDetailsUseCase;

  Future<void> getPersonDetails({required int id}) async {
    emit(const PersonDetailsState.loading());
    final response = await _getPersonDetailsUseCase(id);

    emit(response.fold(
      (l) => errorStateFrom(
        l,
        determineError: (_, message, __) =>
            PersonDetailsState.error(message: message),
      ),
      (r) => PersonDetailsState.loadedPersonDetails(data: r),
    ));
  }
}
