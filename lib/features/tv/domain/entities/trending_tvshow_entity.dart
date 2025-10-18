class TrendingTVShowEntity {
  int page;
  List<TrendingShow> result;
  int totalPages;
  int totalResult;

  TrendingTVShowEntity({
    this.page = 0,
    this.result = const [],
    this.totalPages = 0,
    this.totalResult = 0
  });
}

class TrendingShow {
  bool adult;
  String backdropPath;
  int id;
  String name;
  String originalName;
  String overview;
  String posterPath;
  String mediaType;
  String originalLanguage;
  List<int> genreId;
  double popularity;
  String firstAirDate;
  double voteAverage;
  int voteCount;
  List<String> originCountry;

  TrendingShow({
    this.adult = false,
    this.backdropPath = '',
    this.id = 0,
    this.name = '',
    this.originalName = '',
    this.overview = '',
    this.posterPath = '',
    this.mediaType = 'movie',
    this.originalLanguage = 'en',
    this.genreId = const [],
    this.popularity = 0.0,
    this.firstAirDate = '',
    this.voteAverage = 0.0,
    this.voteCount = 0,
    this.originCountry = const []
  });

}