import 'package:people_index/features/people/data/models/person_model.dart';
import 'package:people_index/features/people/domain/entities/person.dart';

extension XPersonModel on PersonModel {
  Person get domain {
    return Person(
      id: id,
      name: name ?? '',
      popularity: popularity ?? 0.0,
      imageUrl: imageUrl ?? '',
      biography: biography,
      knownFor: knownFor,
    );
  }
}
