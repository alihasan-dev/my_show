// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrendingMoviesResponse _$TrendingMoviesResponseFromJson(
  Map<String, dynamic> json,
) => _TrendingMoviesResponse(
  page: (json['page'] as num?)?.toInt(),
  results: (json['results'] as List<dynamic>?)
      ?.map((e) => MovieResult.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalPages: (json['total_pages'] as num?)?.toInt(),
  totalResults: (json['total_results'] as num?)?.toInt(),
);

Map<String, dynamic> _$TrendingMoviesResponseToJson(
  _TrendingMoviesResponse instance,
) => <String, dynamic>{
  'page': instance.page,
  'results': instance.results,
  'total_pages': instance.totalPages,
  'total_results': instance.totalResults,
};

_MovieResult _$MovieResultFromJson(Map<String, dynamic> json) => _MovieResult(
  adult: json['adult'] as bool?,
  backdropPath: json['backdrop_path'] as String?,
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  originalTitle: json['original_title'] as String?,
  name: json['name'] as String?,
  originalName: json['original_name'] as String?,
  overview: json['overview'] as String?,
  posterPath: json['poster_path'] as String?,
  mediaType: json['media_type'] as String?,
  originalLanguage: json['original_language'] as String?,
  genreIds: (json['genre_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  popularity: (json['popularity'] as num?)?.toDouble(),
  releaseDate: json['release_date'] as String?,
  firstAirDate: json['first_air_date'] as String?,
  video: json['video'] as bool?,
  voteAverage: (json['vote_average'] as num?)?.toDouble(),
  voteCount: (json['vote_count'] as num?)?.toInt(),
  originCountry: (json['origin_country'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$MovieResultToJson(_MovieResult instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'name': instance.name,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'media_type': instance.mediaType,
      'original_language': instance.originalLanguage,
      'genre_ids': instance.genreIds,
      'popularity': instance.popularity,
      'release_date': instance.releaseDate,
      'first_air_date': instance.firstAirDate,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'origin_country': instance.originCountry,
    };
