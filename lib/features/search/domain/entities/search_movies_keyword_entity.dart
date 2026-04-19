class SearchMoviesKeywordEntity {
  final int? id;
  final int? page;
  List<Movies>? result;
  final int? totalPages;
  final int? totalResults;

  SearchMoviesKeywordEntity({
    this.id = -1,
    this.page = -1,
    this.result = const [],
    this.totalPages = -1,
    this.totalResults = -1
  });
}

class Movies {
  final bool? adult;
  final String? backdropPath;
  final List<int>? genres;
  final int? id;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;

  final String? name;
  final String? knownForDepartment;
  final String? originalName;
  final String? mediaType;
  final int? gender;
  final String? profilePath;
  final List<Movies> knownFor;

  final double? popularity;
  final String? posterPath;
  final String? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  Movies({
    this.adult = false,
    this.backdropPath = '',
    this.genres = const [],
    this.id = -1,
    this.originalLanguage = '',
    this.originalTitle = '',
    this.overview = '',

    this.name = '',
    this.knownForDepartment = '',
    this.originalName = '',
    this.mediaType = '',
    this.gender = -1,
    this.profilePath = '',
    this.knownFor = const [],

    this.popularity = 0.0,
    this.posterPath = '',
    this.releaseDate = '',
    this.title = '',
    this.video = false,
    this.voteAverage = 0.0,
    this.voteCount = -1
  });
}