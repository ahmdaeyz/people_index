// ignore_for_file: avoid_dynamic_calls

class GetPersonImagesApiResponse {
  GetPersonImagesApiResponse({
    this.id,
    this.profiles,
  });

  GetPersonImagesApiResponse.fromJson(dynamic json) {
    id = json['id'] as int;
    if (json['profiles'] != null) {
      profiles = [];
      json['profiles'].forEach((dynamic v) {
        profiles?.add(Profiles.fromJson(v));
      });
    }
  }

  int? id;
  List<Profiles>? profiles;
}

class Profiles {
  Profiles({
    this.aspectRatio,
    this.filePath,
    this.voteAverage,
  });

  Profiles.fromJson(dynamic json) {
    aspectRatio = json['aspect_ratio'] as double;
    filePath = json['file_path'] as String;
    voteAverage = json['vote_average'] as double;
  }

  double? aspectRatio;
  String? filePath;
  double? voteAverage;
}
