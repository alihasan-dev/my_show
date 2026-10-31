// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EpisodeDetailsModel _$EpisodeDetailsModelFromJson(Map<String, dynamic> json) =>
    _EpisodeDetailsModel(
      id: (json['id'] as num?)?.toInt(),
      airDate: json['air_date'] as String?,
      crew: (json['crew'] as List<dynamic>?)
          ?.map((e) => Crew.fromJson(e as Map<String, dynamic>))
          .toList(),
      episodeNumber: (json['episode_number'] as num?)?.toInt(),
      episodeType: json['episode_type'] as String?,
      guestStars: (json['guest_stars'] as List<dynamic>?)
          ?.map((e) => GuestStar.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      productionCode: json['production_code'] as String?,
      runtime: (json['runtime'] as num?)?.toInt(),
      seasonNumber: (json['season_number'] as num?)?.toInt(),
      stillPath: json['still_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: (json['vote_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EpisodeDetailsModelToJson(
  _EpisodeDetailsModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'air_date': instance.airDate,
  'crew': instance.crew,
  'episode_number': instance.episodeNumber,
  'episode_type': instance.episodeType,
  'guest_stars': instance.guestStars,
  'name': instance.name,
  'overview': instance.overview,
  'production_code': instance.productionCode,
  'runtime': instance.runtime,
  'season_number': instance.seasonNumber,
  'still_path': instance.stillPath,
  'vote_average': instance.voteAverage,
  'vote_count': instance.voteCount,
};

_Crew _$CrewFromJson(Map<String, dynamic> json) => _Crew(
  adult: json['adult'] as bool?,
  gender: (json['gender'] as num?)?.toInt(),
  id: (json['id'] as num?)?.toInt(),
  knownFordepartment: json['known_for_department'] as String?,
  name: json['name'] as String?,
  originalName: json['original_name'] as String?,
  popularity: (json['popularity'] as num?)?.toDouble(),
  profilePath: json['profile_path'] as String?,
  creditId: json['credit_id'] as String?,
  department: json['department'] as String?,
  job: json['job'] as String?,
);

Map<String, dynamic> _$CrewToJson(_Crew instance) => <String, dynamic>{
  'adult': instance.adult,
  'gender': instance.gender,
  'id': instance.id,
  'known_for_department': instance.knownFordepartment,
  'name': instance.name,
  'original_name': instance.originalName,
  'popularity': instance.popularity,
  'profile_path': instance.profilePath,
  'credit_id': instance.creditId,
  'department': instance.department,
  'job': instance.job,
};

_GuestStar _$GuestStarFromJson(Map<String, dynamic> json) => _GuestStar(
  adult: json['adult'] as bool?,
  gender: (json['gender'] as num?)?.toInt(),
  id: (json['id'] as num?)?.toInt(),
  order: (json['order'] as num?)?.toInt(),
  knownFordepartment: json['known_for_department'] as String?,
  name: json['name'] as String?,
  originalName: json['original_name'] as String?,
  popularity: (json['popularity'] as num?)?.toDouble(),
  profilePath: json['profile_path'] as String?,
  creditId: json['credit_id'] as String?,
  character: json['character'] as String?,
);

Map<String, dynamic> _$GuestStarToJson(_GuestStar instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'order': instance.order,
      'known_for_department': instance.knownFordepartment,
      'name': instance.name,
      'original_name': instance.originalName,
      'popularity': instance.popularity,
      'profile_path': instance.profilePath,
      'credit_id': instance.creditId,
      'character': instance.character,
    };
