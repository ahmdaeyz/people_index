import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:people_index/core/presentation/utils/errors.dart';
import 'package:people_index/features/images/domain/use_cases/get_person_images_use_case.dart';
import 'package:people_index/features/images/presentation/bloc/person_images/person_images_state.dart';

@injectable
class PersonImagesCubit extends Cubit<PersonImagesState> {
  PersonImagesCubit(this._getPersonImagesUseCase)
      : super(const PersonImagesState.initial());

  final GetPersonImagesUseCase _getPersonImagesUseCase;

  Future<void> getPersonImages({required int id}) async {
    emit(const PersonImagesState.loading());
    final response = await _getPersonImagesUseCase(id);
    emit(
      response.fold(
        (l) => errorStateFrom(
          l,
          determineError: (_, message, __) =>
              PersonImagesState.error(message: message),
        ),
        (r) => PersonImagesState.loadedPersonImages(data: r),
      ),
    );
  }
}
