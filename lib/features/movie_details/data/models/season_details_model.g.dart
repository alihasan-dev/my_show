// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SeasonDetailsModel _$SeasonDetailsModelFromJson(Map<String, dynamic> json) =>
    _SeasonDetailsModel(
      id: (json['id'] as num?)?.toInt(),
      hashId: json['_id'] as String?,
      airDate: json['air_date'] as String?,
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      networks: (json['networks'] as List<dynamic>?)
          ?.map((e) => Network.fromJson(e as Map<String, dynamic>))
          .toList(),
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      seasonNumber: (json['season_number'] as num?)?.toInt(),
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SeasonDetailsModelToJson(_SeasonDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      '_id': instance.hashId,
      'air_date': instance.airDate,
      'episodes': instance.episodes,
      'name': instance.name,
      'networks': instance.networks,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'season_number': instance.seasonNumber,
      'vote_average': instance.voteAverage,
    };

_Episode _$EpisodeFromJson(Map<String, dynamic> json) => _Episode(
  airDate: json['air_date'] as String?,
  episodeNumber: (json['episode_number'] as num?)?.toInt(),
  episodeType: json['episode_type'] as String?,
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  overview: json['overview'] as String?,
  productionCode: json['production_code'] as String?,
  runtime: (json['runtime'] as num?)?.toInt(),
  seasonNumber: (json['season_number'] as num?)?.toInt(),
  showId: (json['show_id'] as num?)?.toInt(),
  stillPath: json['still_path'] as String?,
  voteAverage: (json['vote_average'] as num?)?.toDouble(),
  voteCount: (json['vote_count'] as num?)?.toInt(),
  crew: (json['crew'] as List<dynamic>?)
      ?.map((e) => Crew.fromJson(e as Map<String, dynamic>))
      .toList(),
  guestStars: (json['guest_stars'] as List<dynamic>?)
      ?.map((e) => GuestStar.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$EpisodeToJson(_Episode instance) => <String, dynamic>{
  'air_date': instance.airDate,
  'episode_number': instance.episodeNumber,
  'episode_type': instance.episodeType,
  'id': instance.id,
  'name': instance.name,
  'overview': instance.overview,
  'production_code': instance.productionCode,
  'runtime': instance.runtime,
  'season_number': instance.seasonNumber,
  'show_id': instance.showId,
  'still_path': instance.stillPath,
  'vote_average': instance.voteAverage,
  'vote_count': instance.voteCount,
  'crew': instance.crew,
  'guest_stars': instance.guestStars,
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

_Network _$NetworkFromJson(Map<String, dynamic> json) => _Network(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  originalCountry: json['origin_country'] as String?,
  logoPath: json['logo_path'] as String?,
);

Map<String, dynamic> _$NetworkToJson(_Network instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'origin_country': instance.originalCountry,
  'logo_path': instance.logoPath,
};
