// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_people_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PopularPeopleModel _$PopularPeopleModelFromJson(Map<String, dynamic> json) =>
    _PopularPeopleModel(
      page: (json['page'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => People.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PopularPeopleModelToJson(_PopularPeopleModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'results': instance.results,
    };

_People _$PeopleFromJson(Map<String, dynamic> json) => _People(
  adult: json['adult'] as bool?,
  gender: (json['gender'] as num?)?.toInt(),
  id: (json['id'] as num?)?.toInt(),
  knownForDepartment: json['known_for_department'] as String?,
  name: json['name'] as String?,
  originalName: json['original_name'] as String?,
  popularity: (json['popularity'] as num?)?.toDouble(),
  profilePath: json['profile_path'] as String?,
);

Map<String, dynamic> _$PeopleToJson(_People instance) => <String, dynamic>{
  'adult': instance.adult,
  'gender': instance.gender,
  'id': instance.id,
  'known_for_department': instance.knownForDepartment,
  'name': instance.name,
  'original_name': instance.originalName,
  'popularity': instance.popularity,
  'profile_path': instance.profilePath,
};
