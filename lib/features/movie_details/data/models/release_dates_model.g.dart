// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_dates_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReleaseDatesModel _$ReleaseDatesModelFromJson(Map<String, dynamic> json) =>
    _ReleaseDatesModel(
      id: (json['id'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReleaseDatesModelToJson(_ReleaseDatesModel instance) =>
    <String, dynamic>{'id': instance.id, 'results': instance.results};

_Results _$ResultsFromJson(Map<String, dynamic> json) => _Results(
  iso3611: json['iso_3166_1'] as String?,
  releaseDates: (json['release_dates'] as List<dynamic>?)
      ?.map((e) => ReleaseDates.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ResultsToJson(_Results instance) => <String, dynamic>{
  'iso_3166_1': instance.iso3611,
  'release_dates': instance.releaseDates,
};

_ReleaseDates _$ReleaseDatesFromJson(Map<String, dynamic> json) =>
    _ReleaseDates(
      certification: json['certification'] as String?,
      descriptors: (json['descriptors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      iso639: json['iso_639_1'] as String?,
      note: json['note'] as String?,
      releaseDate: json['release_date'] as String?,
      type: (json['type'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReleaseDatesToJson(_ReleaseDates instance) =>
    <String, dynamic>{
      'certification': instance.certification,
      'descriptors': instance.descriptors,
      'iso_639_1': instance.iso639,
      'note': instance.note,
      'release_date': instance.releaseDate,
      'type': instance.type,
    };
