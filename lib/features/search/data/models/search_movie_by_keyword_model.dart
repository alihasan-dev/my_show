import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_movie_by_keyword_model.freezed.dart';
part 'search_movie_by_keyword_model.g.dart';

@freezed
sealed class SearchMovieByKeywordModel with _$SearchMovieByKeywordModel {
  const factory SearchMovieByKeywordModel({
    final int? id,
    final int? page,
    final List<SearchMovieKeyword>? results,
    @JsonKey(name: 'total_pages') final int? totalPages,
    @JsonKey(name: 'total_results') final int? totalResults
  }) = _SearchMovieByKeywordModel;

  factory SearchMovieByKeywordModel.fromJson(Map<String, dynamic> json) => _$SearchMovieByKeywordModelFromJson(json);
}

@freezed
sealed class SearchMovieKeyword with _$SearchMovieKeyword {
  const factory SearchMovieKeyword({
    final bool? adult,
    @JsonKey(name: 'backdrop_path') final String? backdropPath,
    @JsonKey(name: 'genre_ids') final List<int>? genreIds,
    final int? id,
    @JsonKey(name: "origin_country") final List<String>? originCountry,
    @JsonKey(name: 'original_name') final String? originalName,
    @JsonKey(name: 'original_title') final String? originalTitle,
    final String? overview,
    final String? title,
    final String? name,
    @JsonKey(name: 'poster_path') final String? posterPath,
    @JsonKey(name: 'original_language') final String? originalLanguage,
    final double? popularity,
    @JsonKey(name: 'first_air_date') final String? firstAirDate,
    @JsonKey(name: 'release_date') final String? releaseDate,
    final bool? video,
    @JsonKey(name: 'vote_average') final double? voteAverage,
    @JsonKey(name: 'vote_count') final int? voteCount,
  }) = _SearchMovieKeyword;

  factory SearchMovieKeyword.fromJson(Map<String, dynamic> json) => _$SearchMovieKeywordFromJson(json);
} 