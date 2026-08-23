import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_movies_model.freezed.dart';
part 'trending_movies_model.g.dart'; // for json_serializable

@freezed
sealed class TrendingMoviesResponse with _$TrendingMoviesResponse {
  factory TrendingMoviesResponse({
    int? page,
    List<MovieResult>? results,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResults,
  }) = _TrendingMoviesResponse;

  factory TrendingMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$TrendingMoviesResponseFromJson(json);
}

@freezed
sealed class MovieResult with _$MovieResult {
  factory MovieResult({
    bool? adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    int? id,
    String? title,
    @JsonKey(name: 'original_title') String? originalTitle,
    String? name,
    @JsonKey(name: 'original_name') String? originalName,
    String? overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'media_type') String? mediaType,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'genre_ids') List<int>? genreIds,
    double? popularity,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'first_air_date') String? firstAirDate,
    bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
    @JsonKey(name: 'origin_country') List<String>? originCountry,
  }) = _MovieResult;

  factory MovieResult.fromJson(Map<String, dynamic> json) =>
      _$MovieResultFromJson(json);
}