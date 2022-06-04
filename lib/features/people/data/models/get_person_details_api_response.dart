// ignore_for_file: avoid_dynamic_calls

class GetPersonDetailsApiResponse {
  GetPersonDetailsApiResponse({
    this.knownForDepartment,
    this.id,
    this.name,
    this.biography,
    this.popularity,
    this.profilePath,
  });

  GetPersonDetailsApiResponse.fromJson(dynamic json) {
    knownForDepartment = json['known_for_department'] as String?;
    id = json['id'] as int?;
    name = json['name'] as String?;
    biography = json['biography'] as String?;
    popularity = json['popularity'] as double?;
    profilePath = json['profile_path'] as String?;
  }

  String? knownForDepartment;
  int? id;
  String? name;
  String? biography;
  double? popularity;
  String? profilePath;
}
