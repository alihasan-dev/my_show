// class TrendingMoviesEntity {
//   int page;
//   List<TrendingMovie> result;
//   int totalPages;
//   int totalResult;

//   TrendingMoviesEntity({
//     this.page = 0,
//     this.result = const [],
//     this.totalPages = 0,
//     this.totalResult = 0
//   });
// }

// class TrendingMovie {
//   bool adult;
//   String backdropPath;
//   int id;
//   String title;
//   String originalTitle;
//   String overview;
//   String posterPath;
//   String mediaType;
//   String originalLanguage;
//   List<int> genreId;
//   double popularity;
//   String releaseDate;
//   bool video;
//   double voteAverage;
//   int voteCount;

//   TrendingMovie({
//     this.adult = false,
//     this.backdropPath = '',
//     this.id = 0,
//     this.title = '',
//     this.originalTitle = '',
//     this.overview = '',
//     this.posterPath = '',
//     this.mediaType = 'movie',
//     this.originalLanguage = 'en',
//     this.genreId = const [],
//     this.popularity = 0.0,
//     this.releaseDate = '',
//     this.video = false,
//     this.voteAverage = 0.0,
//     this.voteCount = 0,
//   });

// }

class TrendingMoviesEntity {
  int page;
  List<TrendingMovie> result;
  int totalPages;
  int totalResult;

  TrendingMoviesEntity({
    this.page = 0,
    this.result = const [],
    this.totalPages = 0,
    this.totalResult = 0,
  });

  TrendingMoviesEntity copyWith({
    int? page,
    List<TrendingMovie>? result,
    int? totalPages,
    int? totalResult,
  }) {
    return TrendingMoviesEntity(
      page: page ?? this.page,
      result: result ?? this.result,
      totalPages: totalPages ?? this.totalPages,
      totalResult: totalResult ?? this.totalResult,
    );
  }
}

class TrendingMovie {
  bool adult;
  String backdropPath;
  int id;
  String title;
  String originalTitle;
  String overview;
  String posterPath;
  String mediaType;
  String originalLanguage;
  List<int> genreId;
  double popularity;
  String releaseDate;
  bool video;
  double voteAverage;
  int voteCount;

  TrendingMovie({
    this.adult = false,
    this.backdropPath = '',
    this.id = 0,
    this.title = '',
    this.originalTitle = '',
    this.overview = '',
    this.posterPath = '',
    this.mediaType = 'movie',
    this.originalLanguage = 'en',
    this.genreId = const [],
    this.popularity = 0.0,
    this.releaseDate = '',
    this.video = false,
    this.voteAverage = 0.0,
    this.voteCount = 0,
  });

  TrendingMovie copyWith({
    bool? adult,
    String? backdropPath,
    int? id,
    String? title,
    String? originalTitle,
    String? overview,
    String? posterPath,
    String? mediaType,
    String? originalLanguage,
    List<int>? genreId,
    double? popularity,
    String? releaseDate,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) {
    return TrendingMovie(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      id: id ?? this.id,
      title: title ?? this.title,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      posterPath: posterPath ?? this.posterPath,
      mediaType: mediaType ?? this.mediaType,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      genreId: genreId ?? this.genreId,
      popularity: popularity ?? this.popularity,
      releaseDate: releaseDate ?? this.releaseDate,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }
}