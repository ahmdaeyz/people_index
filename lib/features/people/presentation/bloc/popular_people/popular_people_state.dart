import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:people_index/features/people/domain/entities/person.dart';

part 'popular_people_state.freezed.dart';

@freezed
abstract class PopularPeopleState with _$PopularPeopleState {
  const factory PopularPeopleState.initial() = Initial;

  const factory PopularPeopleState.loading() = Loading;

  const factory PopularPeopleState.paginating() = Paginating;

  const factory PopularPeopleState.loadedPopularPeople(
      {required List<Person> data}) = LoadedPopularPeople;

  const factory PopularPeopleState.error({required String message}) = Error;

  const factory PopularPeopleState.actionError({required String message}) =
      ActionError;
}
