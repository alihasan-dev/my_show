// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_tv_show_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrendingTVShowModel _$TrendingTVShowModelFromJson(Map<String, dynamic> json) =>
    _TrendingTVShowModel(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => TvShow.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TrendingTVShowModelToJson(
  _TrendingTVShowModel instance,
) => <String, dynamic>{
  'page': instance.page,
  'results': instance.results,
  'total_pages': instance.totalPages,
  'total_results': instance.totalResults,
};

_TvShow _$TvShowFromJson(Map<String, dynamic> json) => _TvShow(
  adult: json['adult'] as bool?,
  backdropPath: json['backdrop_path'] as String?,
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  originalTitle: json['original_name'] as String?,
  overview: json['overview'] as String?,
  posterPath: json['poster_path'] as String?,
  mediaType: json['media_type'] as String?,
  originalLanguage: json['original_language'] as String?,
  genreIds: (json['genre_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  popularity: (json['popularity'] as num?)?.toDouble(),
  firstAirDate: json['first_air_date'] as String?,
  voteAverage: (json['vote_average'] as num?)?.toDouble(),
  voteCount: (json['vote_count'] as num?)?.toInt(),
  originCountry: (json['origin_country'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$TvShowToJson(_TvShow instance) => <String, dynamic>{
  'adult': instance.adult,
  'backdrop_path': instance.backdropPath,
  'id': instance.id,
  'name': instance.name,
  'original_name': instance.originalTitle,
  'overview': instance.overview,
  'poster_path': instance.posterPath,
  'media_type': instance.mediaType,
  'original_language': instance.originalLanguage,
  'genre_ids': instance.genreIds,
  'popularity': instance.popularity,
  'first_air_date': instance.firstAirDate,
  'vote_average': instance.voteAverage,
  'vote_count': instance.voteCount,
  'origin_country': instance.originCountry,
};
