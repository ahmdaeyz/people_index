import 'package:people_index/features/people/data/services/people_database.dart';

// ignore: one_member_abstracts
abstract class PersonDetailsDataSource {
  Future<PersonModel> getPersonDetails({required int id});
}
