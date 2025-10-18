import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_movies_model.freezed.dart';
part 'trending_movies_model.g.dart'; // for json_serializable

@freezed
sealed class TrendingMoviesResponse with _$TrendingMoviesResponse {
  factory TrendingMoviesResponse({
    final int? page,
    final List<MovieResult>? results,
    @JsonKey(name: 'total_pages') final int? totalPages,
    @JsonKey(name: 'total_results') final int? totalResults,
  }) = _TrendingMoviesResponse;

  factory TrendingMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$TrendingMoviesResponseFromJson(json);
}

@freezed
sealed class MovieResult with _$MovieResult {
  factory MovieResult({
    final bool? adult,
    @JsonKey(name: 'backdrop_path') final String? backdropPath,
    final int? id,
    final String? title,
    @JsonKey(name: 'original_title') final String? originalTitle,
    final String? name,
    @JsonKey(name: 'original_name') final String? originalName,
    final String? overview,
    @JsonKey(name: 'poster_path') final String? posterPath,
    @JsonKey(name: 'media_type') final String? mediaType,
    @JsonKey(name: 'original_language') final String? originalLanguage,
    @JsonKey(name: 'genre_ids') final List<int>? genreIds,
    final double? popularity,
    @JsonKey(name: 'release_date') final String? releaseDate,
    @JsonKey(name: 'first_air_date') final String? firstAirDate,
    final bool? video,
    @JsonKey(name: 'vote_average') final double? voteAverage,
    @JsonKey(name: 'vote_count') final int? voteCount,
    @JsonKey(name: 'origin_country') final List<String>? originCountry,
  }) = _MovieResult;

  factory MovieResult.fromJson(Map<String, dynamic> json) =>
      _$MovieResultFromJson(json);
}