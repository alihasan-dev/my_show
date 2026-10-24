import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_movie_by_keyword_model.freezed.dart';
part 'search_movie_by_keyword_model.g.dart';

@freezed
sealed class SearchMovieByKeywordModel with _$SearchMovieByKeywordModel {
  const factory SearchMovieByKeywordModel({
    int? id,
    int? page,
    List<SearchMovieKeyword>? results,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResults
  }) = _SearchMovieByKeywordModel;

  factory SearchMovieByKeywordModel.fromJson(Map<String, dynamic> json) => _$SearchMovieByKeywordModelFromJson(json);
}

@freezed
sealed class SearchMovieKeyword with _$SearchMovieKeyword {
  const factory SearchMovieKeyword({
    bool? adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'genre_ids') List<int>? genreIds,
    int? id,
    @JsonKey(name: "origin_country") List<String>? originCountry,
    @JsonKey(name: 'original_name') String? originalName,
    @JsonKey(name: 'original_title') String? originalTitle,
    String? overview,
    String? title,
    String? name,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'original_language') String? originalLanguage,
    double? popularity,
    @JsonKey(name: 'first_air_date') String? firstAirDate,
    @JsonKey(name: 'release_date') String? releaseDate,
    bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _SearchMovieKeyword;

  factory SearchMovieKeyword.fromJson(Map<String, dynamic> json) => _$SearchMovieKeywordFromJson(json);
} 