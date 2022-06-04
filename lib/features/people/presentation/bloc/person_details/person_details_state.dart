import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:people_index/features/people/domain/entities/person.dart';

part 'person_details_state.freezed.dart';

@freezed
abstract class PersonDetailsState with _$PersonDetailsState {
  const factory PersonDetailsState.initial() = Initial;

  const factory PersonDetailsState.loading() = Loading;

  const factory PersonDetailsState.loadedPersonDetails({required Person data}) =
      LoadedPersonDetails;

  const factory PersonDetailsState.error({required String message}) = Error;
}
