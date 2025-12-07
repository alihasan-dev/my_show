// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoModel _$VideoModelFromJson(Map<String, dynamic> json) => _VideoModel(
  id: (json['id'] as num?)?.toInt(),
  results: (json['results'] as List<dynamic>?)
      ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$VideoModelToJson(_VideoModel instance) =>
    <String, dynamic>{'id': instance.id, 'results': instance.results};

_Results _$ResultsFromJson(Map<String, dynamic> json) => _Results(
  id: json['id'] as String?,
  iso6391: json['iso_639_1'] as String?,
  iso31661: json['iso_3166_1'] as String?,
  key: json['key'] as String?,
  name: json['name'] as String?,
  site: json['site'] as String?,
  size: (json['size'] as num?)?.toInt(),
  type: json['type'] as String?,
  official: json['official'] as bool?,
  publishedAt: json['published_at'] as String?,
);

Map<String, dynamic> _$ResultsToJson(_Results instance) => <String, dynamic>{
  'id': instance.id,
  'iso_639_1': instance.iso6391,
  'iso_3166_1': instance.iso31661,
  'key': instance.key,
  'name': instance.name,
  'site': instance.site,
  'size': instance.size,
  'type': instance.type,
  'official': instance.official,
  'published_at': instance.publishedAt,
};
