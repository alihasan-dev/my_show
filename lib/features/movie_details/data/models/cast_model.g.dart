// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CastModel _$CastModelFromJson(Map<String, dynamic> json) => _CastModel(
  id: (json['id'] as num?)?.toInt(),
  cast: (json['cast'] as List<dynamic>?)
      ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
      .toList(),
  crew: (json['crew'] as List<dynamic>?)
      ?.map((e) => Crew.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CastModelToJson(_CastModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
      'crew': instance.crew,
    };

_Cast _$CastFromJson(Map<String, dynamic> json) => _Cast(
  adult: json['adult'] as bool?,
  gender: (json['gender'] as num?)?.toInt(),
  id: (json['id'] as num?)?.toInt(),
  knownFordepartment: json['known_for_department'] as String?,
  name: json['name'] as String?,
  originalName: json['original_name'] as String?,
  popularity: (json['popularity'] as num?)?.toDouble(),
  profilePath: json['profile_path'] as String?,
  castId: (json['cast_id'] as num?)?.toInt(),
  character: json['character'] as String?,
  creditId: json['credit_id'] as String?,
  order: (json['order'] as num?)?.toInt(),
);

Map<String, dynamic> _$CastToJson(_Cast instance) => <String, dynamic>{
  'adult': instance.adult,
  'gender': instance.gender,
  'id': instance.id,
  'known_for_department': instance.knownFordepartment,
  'name': instance.name,
  'original_name': instance.originalName,
  'popularity': instance.popularity,
  'profile_path': instance.profilePath,
  'cast_id': instance.castId,
  'character': instance.character,
  'credit_id': instance.creditId,
  'order': instance.order,
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
