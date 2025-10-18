import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details_model.freezed.dart';
part 'movie_details_model.g.dart';

@freezed
sealed class MovieDetailsModel with _$MovieDetailsModel {
  const factory MovieDetailsModel({
    final bool? adult,
    @JsonKey(name: 'backdrop_path') final String? backdropPath,
    @JsonKey(name: 'belongs_to_collection') final dynamic belongsToCollection,
    final int? budget,
    final List<Genre>? genres,
    final String? homepage,
    final int? id,
    @JsonKey(name: 'imdb_id') final String? imdbId,
    @JsonKey(name: 'origin_country') final List<String>? originCountry,
    @JsonKey(name: 'original_language') final String? originalLanguage,
    @JsonKey(name: 'original_title') final String? originalTitle,
    @JsonKey(name: 'original_name') final String? originalName,
    final String? overview,
    final double? popularity,
    @JsonKey(name: 'poster_path') final String? posterPath,
    @JsonKey(name: 'production_companies')
    final List<ProductionCompany>? productionCompanies,
    @JsonKey(name: 'production_countries')
    final List<ProductionCountry>? productionCountries,
    @JsonKey(name: 'release_date') final String? releaseDate,
    @JsonKey(name: 'first_air_date') final String? firstAirDate,
    final int? revenue,
    final int? runtime,
    @JsonKey(name: 'spoken_languages') final List<SpokenLanguage>? spokenLanguages,
    final String? status,
    final String? tagline,
    final String? type,
    final String? title,
    final String? name,
    final bool? video,
    @JsonKey(name: 'number_of_episodes') final int? numberOfEpisodes,
    @JsonKey(name: 'number_of_seasons') final int? numberOfSeasons,
    final List<Networks>? networks,
    final List<Seasons>? seasons,
    @JsonKey(name: 'vote_average') final double? voteAverage,
    @JsonKey(name: 'vote_count') final int? voteCount,
  }) = _MovieDetailsModel;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) => _$MovieDetailsModelFromJson(json);
}

@freezed
sealed class Genre with _$Genre {
  const factory Genre({
    final int? id,
    final String? name
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

@freezed
sealed class ProductionCompany with _$ProductionCompany {
  const factory ProductionCompany({
    final int? id,
    @JsonKey(name: 'logo_path') final String? logoPath,
    final String? name,
    @JsonKey(name: 'origin_country') final String? originCountry,
  }) = _ProductionCompany;

  factory ProductionCompany.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyFromJson(json);
}

@freezed
sealed class ProductionCountry with _$ProductionCountry {
  const factory ProductionCountry({
    @JsonKey(name: 'iso_3166_1') final String? iso31661,
    final String? name,
  }) = _ProductionCountry;

  factory ProductionCountry.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountryFromJson(json);
}

@freezed
sealed class SpokenLanguage with _$SpokenLanguage {
  const factory SpokenLanguage({
    @JsonKey(name: 'english_name') final String? englishName,
    @JsonKey(name: 'iso_639_1') final String? iso6391,
    final String? name,
  }) = _SpokenLanguage;

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageFromJson(json);
}

@freezed
sealed class Networks with _$Networks {
  const factory Networks({
    final int? id,
    @JsonKey(name: 'logo_path') final String? logoPath,
    final String? name,
    @JsonKey(name: 'origin_country') final String? originCountry,
  }) = _Networks;

  factory Networks.fromJson(Map<String, dynamic> json) =>
      _$NetworksFromJson(json);
}

@freezed
sealed class Seasons with _$Seasons {
  const factory Seasons({
    @JsonKey(name: 'air_date') final String? airDate,
    @JsonKey(name: 'episode_count') final int? episodeCount,
    final int? id,
    @JsonKey(name: 'poster_path') final String? posterPath,
    final String? name,
    final String? overview,
    @JsonKey(name: 'season_number') final int? seasonNumber,
    @JsonKey(name: 'vote_average') final double? voteAverage,
  }) = _Seasons;

  factory Seasons.fromJson(Map<String, dynamic> json) =>
      _$SeasonsFromJson(json);
}