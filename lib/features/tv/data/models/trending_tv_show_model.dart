import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_tv_show_model.freezed.dart';
part 'trending_tv_show_model.g.dart'; // for json_serializable

@freezed
sealed class TrendingTVShowModel with _$TrendingTVShowModel {
  factory TrendingTVShowModel({
    int? page,
    List<TvShow>? results,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResults,
  }) = _TrendingTVShowModel;

  factory TrendingTVShowModel.fromJson(Map<String, dynamic> json) =>
      _$TrendingTVShowModelFromJson(json);
}

@freezed
sealed class TvShow with _$TvShow {
  factory TvShow({
    bool? adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    int? id,
    String? name,
    @JsonKey(name: 'original_name') String? originalTitle,
    String? overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'media_type') String? mediaType,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'genre_ids') List<int>? genreIds,
    double? popularity,
    @JsonKey(name: 'first_air_date') String? firstAirDate,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
    @JsonKey(name: 'origin_country') List<String>? originCountry,
  }) = _TvShow;

  factory TvShow.fromJson(Map<String, dynamic> json) =>
      _$TvShowFromJson(json);
}