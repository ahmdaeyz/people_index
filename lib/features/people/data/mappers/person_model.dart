import 'package:people_index/features/people/data/services/people_database.dart';
import 'package:people_index/features/people/domain/entities/person.dart';

extension XPersonModel on PersonModel {
  Person get domain {
    return Person(
      id: id,
      name: name,
      popularity: popularity,
      imageUrl: imageUrl,
      biography: biography,
      knownFor: knownFor,
    );
  }
}
