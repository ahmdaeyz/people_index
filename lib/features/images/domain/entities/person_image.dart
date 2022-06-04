import 'package:equatable/equatable.dart';

class PersonImage extends Equatable {
  const PersonImage({
    required this.imageUrl,
    required this.aspectRatio,
    required this.voteAverage,
  });

  final String imageUrl;
  final double aspectRatio;
  final double voteAverage;

  @override
  List<Object?> get props => [
        imageUrl,
      ];
}
