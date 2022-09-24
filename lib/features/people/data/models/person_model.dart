import 'package:isar/isar.dart';

part 'person_model.g.dart';

@collection
class PersonModel {
  PersonModel(
      {required this.id,
      this.popularity,
      this.name,
      this.imageUrl,
      this.biography,
      this.knownFor});

  Id id;

  @Index(type: IndexType.value)
  double? popularity;

  String? name;

  String? imageUrl;

  String? biography;

  String? knownFor;
}
