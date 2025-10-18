// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_credit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieCreditModel _$MovieCreditModelFromJson(Map<String, dynamic> json) =>
    _MovieCreditModel(
      id: (json['id'] as num?)?.toInt(),
      cast: (json['cast'] as List<dynamic>?)
          ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieCreditModelToJson(_MovieCreditModel instance) =>
    <String, dynamic>{'id': instance.id, 'cast': instance.cast};

_Cast _$CastFromJson(Map<String, dynamic> json) => _Cast(
  adult: json['adult'] as bool?,
  backdropPath: json['backdrop_path'] as String?,
  genreId: (json['genre_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  id: (json['id'] as num?)?.toInt(),
  originalLanguage: json['original_language'] as String?,
  originalTitle: json['original_title'] as String?,
  overview: json['overview'] as String?,
  popularity: (json['popularity'] as num?)?.toDouble(),
  posterPath: json['poster_path'] as String?,
  releaseDate: json['release_date'] as String?,
  title: json['title'] as String?,
  video: json['video'] as bool?,
  voteAverage: (json['vote_average'] as num?)?.toDouble(),
  voteCount: (json['vote_count'] as num?)?.toInt(),
  character: json['character'] as String?,
  creditId: json['credit_id'] as String?,
  order: (json['order'] as num?)?.toInt(),
);

Map<String, dynamic> _$CastToJson(_Cast instance) => <String, dynamic>{
  'adult': instance.adult,
  'backdrop_path': instance.backdropPath,
  'genre_ids': instance.genreId,
  'id': instance.id,
  'original_language': instance.originalLanguage,
  'original_title': instance.originalTitle,
  'overview': instance.overview,
  'popularity': instance.popularity,
  'poster_path': instance.posterPath,
  'release_date': instance.releaseDate,
  'title': instance.title,
  'video': instance.video,
  'vote_average': instance.voteAverage,
  'vote_count': instance.voteCount,
  'character': instance.character,
  'credit_id': instance.creditId,
  'order': instance.order,
};
