// class SearchMoviesKeywordEntity {
//   final int? id;
//   final int? page;
//   List<Movies>? result;
//   final int? totalPages;
//   final int? totalResults;

//   SearchMoviesKeywordEntity({
//     this.id = -1,
//     this.page = -1,
//     this.result = const [],
//     this.totalPages = -1,
//     this.totalResults = -1
//   });
// }

// class Movies {
//   final bool? adult;
//   final String? backdropPath;
//   final List<int>? genres;
//   final int? id;
//   final String? originalLanguage;
//   final String? originalTitle;
//   final String? overview;

//   final String? name;
//   final String? knownForDepartment;
//   final String? originalName;
//   final String? mediaType;
//   final int? gender;
//   final String? profilePath;
//   final List<Movies> knownFor;

//   final double? popularity;
//   final String? posterPath;
//   final String? releaseDate;
//   final String? title;
//   final bool? video;
//   final double? voteAverage;
//   final int? voteCount;

//   Movies({
//     this.adult = false,
//     this.backdropPath = '',
//     this.genres = const [],
//     this.id = -1,
//     this.originalLanguage = '',
//     this.originalTitle = '',
//     this.overview = '',

//     this.name = '',
//     this.knownForDepartment = '',
//     this.originalName = '',
//     this.mediaType = '',
//     this.gender = -1,
//     this.profilePath = '',
//     this.knownFor = const [],

//     this.popularity = 0.0,
//     this.posterPath = '',
//     this.releaseDate = '',
//     this.title = '',
//     this.video = false,
//     this.voteAverage = 0.0,
//     this.voteCount = -1
//   });
// }



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
    this.totalResults = -1,
  });

  SearchMoviesKeywordEntity copyWith({
    int? id,
    int? page,
    List<Movies>? result,
    int? totalPages,
    int? totalResults,
  }) {
    return SearchMoviesKeywordEntity(
      id: id ?? this.id,
      page: page ?? this.page,
      result: result ?? this.result,
      totalPages: totalPages ?? this.totalPages,
      totalResults: totalResults ?? this.totalResults,
    );
  }
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
    this.voteCount = -1,
  });

  Movies copyWith({
    bool? adult,
    String? backdropPath,
    List<int>? genres,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    String? name,
    String? knownForDepartment,
    String? originalName,
    String? mediaType,
    int? gender,
    String? profilePath,
    List<Movies>? knownFor,
    double? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) {
    return Movies(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      genres: genres ?? this.genres,
      id: id ?? this.id,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      name: name ?? this.name,
      knownForDepartment: knownForDepartment ?? this.knownForDepartment,
      originalName: originalName ?? this.originalName,
      mediaType: mediaType ?? this.mediaType,
      gender: gender ?? this.gender,
      profilePath: profilePath ?? this.profilePath,
      knownFor: knownFor ?? this.knownFor,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }
}