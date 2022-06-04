// ignore_for_file: avoid_dynamic_calls

class GetPeopleApiResponse {
  GetPeopleApiResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  GetPeopleApiResponse.fromJson(dynamic json) {
    page = int.tryParse(json['page'].toString());
    if (json['results'] != null) {
      results = [];
      for (final v in json['results'] as List) {
        results?.add(Results.fromJson(v));
      }
    }
    totalPages = int.tryParse(json['total_pages'].toString());
    totalResults = int.tryParse(json['total_results'].toString());
  }

  int? page;
  List<Results>? results;
  int? totalPages;
  int? totalResults;
}

class Results {
  Results({
    this.id,
    this.name,
    this.popularity,
    this.profilePath,
  });

  Results.fromJson(dynamic json) {
    id = json['id'] as int?;
    name = json['name'] as String?;
    popularity = json['popularity'] as double?;
    profilePath = json['profile_path'] as String?;
  }

  int? id;
  String? name;
  double? popularity;
  String? profilePath;
}
