import 'package:equatable/equatable.dart';

class Person extends Equatable {
  const Person(
      {required this.id,
      required this.name,
      required this.popularity,
      required this.imageUrl,
      this.biography,
      this.knownFor});

  final int id;
  final String name;
  final double popularity;
  final String imageUrl;
  final String? biography;
  final String? knownFor;

  @override
  List<Object?> get props => [id];
}
