class MovieCreditEntity {
  final int? id;
  final List<CastEntity>? castEntity;

  MovieCreditEntity({
    this.id = -1,
    this.castEntity = const []
  });
}

class CastEntity {
  final bool? adult;
  final String? backdropPath;
  final List<int>? genreId;
  final int? id;
  final String? originalLanguage;
  final String?originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;
  final String? character;
  final String? creditId;
  final int? order;

  CastEntity({
    this.adult = false,
    this.backdropPath = '',
    this.genreId = const [],
    this.id = -1,
    this.originalLanguage = '',
    this.originalTitle = '',
    this.overview = '',
    this.popularity = 0.0,
    this.posterPath = '',
    this.releaseDate = '',
    this.title = '',
    this.video = false,
    this.voteAverage = 0.0,
    this.voteCount = -1,
    this.character = '',
    this.creditId = '',
    this.order = -1
  });
}