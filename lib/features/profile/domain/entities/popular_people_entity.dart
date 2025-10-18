class PopularPeopleEntity {
  final int? page;
  List<People>? results;
  final int? totalPages;
  final int? totalResults;

  PopularPeopleEntity({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults
  });
}

class People {
  final bool? adult;
  final int? gender;
  final int? id;
  final String? knownForDepartment;
  final String? name;
  final String? originalName;
  final double? popularity;
  final String? profilePath;

  People({
    this.adult = false,
    this.gender = -1,
    this.id,
    this.knownForDepartment = '',
    this.name = '',
    this.originalName = '',
    this.popularity = 0.0,
    this.profilePath = ''
  });
}