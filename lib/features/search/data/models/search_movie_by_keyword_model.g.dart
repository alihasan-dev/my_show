// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movie_by_keyword_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchMovieByKeywordModel _$SearchMovieByKeywordModelFromJson(
  Map<String, dynamic> json,
) => _SearchMovieByKeywordModel(
  id: (json['id'] as num?)?.toInt(),
  page: (json['page'] as num?)?.toInt(),
  results: (json['results'] as List<dynamic>?)
      ?.map((e) => SearchMovieKeyword.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalPages: (json['total_pages'] as num?)?.toInt(),
  totalResults: (json['total_results'] as num?)?.toInt(),
);

Map<String, dynamic> _$SearchMovieByKeywordModelToJson(
  _SearchMovieByKeywordModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'page': instance.page,
  'results': instance.results,
  'total_pages': instance.totalPages,
  'total_results': instance.totalResults,
};

_SearchMovieKeyword _$SearchMovieKeywordFromJson(Map<String, dynamic> json) =>
    _SearchMovieKeyword(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      genreIds: (json['genre_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      originCountry: (json['origin_country'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      originalName: json['original_name'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      title: json['title'] as String?,
      name: json['name'] as String?,
      posterPath: json['poster_path'] as String?,
      originalLanguage: json['original_language'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      firstAirDate: json['first_air_date'] as String?,
      releaseDate: json['release_date'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: (json['vote_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchMovieKeywordToJson(_SearchMovieKeyword instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'origin_country': instance.originCountry,
      'original_name': instance.originalName,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'title': instance.title,
      'name': instance.name,
      'poster_path': instance.posterPath,
      'original_language': instance.originalLanguage,
      'popularity': instance.popularity,
      'first_air_date': instance.firstAirDate,
      'release_date': instance.releaseDate,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
