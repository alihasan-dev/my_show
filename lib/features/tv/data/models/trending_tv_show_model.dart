import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_tv_show_model.freezed.dart';
part 'trending_tv_show_model.g.dart'; // for json_serializable

@freezed
sealed class TrendingTVShowModel with _$TrendingTVShowModel {
  factory TrendingTVShowModel({
    final int? page,
    final List<TvShow>? results,
    @JsonKey(name: 'total_pages') final int? totalPages,
    @JsonKey(name: 'total_results') final int? totalResults,
  }) = _TrendingTVShowModel;

  factory TrendingTVShowModel.fromJson(Map<String, dynamic> json) =>
      _$TrendingTVShowModelFromJson(json);
}

@freezed
sealed class TvShow with _$TvShow {
  factory TvShow({
    final bool? adult,
    @JsonKey(name: 'backdrop_path') final String? backdropPath,
    final int? id,
    final String? name,
    @JsonKey(name: 'original_name') final String? originalTitle,
    final String? overview,
    @JsonKey(name: 'poster_path') final String? posterPath,
    @JsonKey(name: 'media_type') final String? mediaType,
    @JsonKey(name: 'original_language') final String? originalLanguage,
    @JsonKey(name: 'genre_ids') final List<int>? genreIds,
    final double? popularity,
    @JsonKey(name: 'first_air_date') final String? firstAirDate,
    @JsonKey(name: 'vote_average') final double? voteAverage,
    @JsonKey(name: 'vote_count') final int? voteCount,
    @JsonKey(name: 'origin_country') final List<String>? originCountry,
  }) = _TvShow;

  factory TvShow.fromJson(Map<String, dynamic> json) =>
      _$TvShowFromJson(json);
}