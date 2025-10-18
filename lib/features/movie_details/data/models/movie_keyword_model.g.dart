// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_keyword_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieKeywordModel _$MovieKeywordModelFromJson(Map<String, dynamic> json) =>
    _MovieKeywordModel(
      id: (json['id'] as num?)?.toInt(),
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => Keyword.fromJson(e as Map<String, dynamic>))
          .toList(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Keyword.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieKeywordModelToJson(_MovieKeywordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'keywords': instance.keywords,
      'results': instance.results,
    };

_Keyword _$KeywordFromJson(Map<String, dynamic> json) =>
    _Keyword(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$KeywordToJson(_Keyword instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
