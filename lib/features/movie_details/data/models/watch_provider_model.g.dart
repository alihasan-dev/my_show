// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_provider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WatchProviderModel _$WatchProviderModelFromJson(Map<String, dynamic> json) =>
    _WatchProviderModel(
      id: (json['id'] as num?)?.toInt(),
      results: (json['results'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          WatchProviderRegion.fromJson(e as Map<String, dynamic>),
        ),
      ),
    );

Map<String, dynamic> _$WatchProviderModelToJson(_WatchProviderModel instance) =>
    <String, dynamic>{'id': instance.id, 'results': instance.results};

_WatchProviderRegion _$WatchProviderRegionFromJson(Map<String, dynamic> json) =>
    _WatchProviderRegion(
      link: json['link'] as String?,
      flatrate: (json['flatrate'] as List<dynamic>?)
          ?.map((e) => ProviderDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      buy: (json['buy'] as List<dynamic>?)
          ?.map((e) => ProviderDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      rent: (json['rent'] as List<dynamic>?)
          ?.map((e) => ProviderDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      free: (json['free'] as List<dynamic>?)
          ?.map((e) => ProviderDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WatchProviderRegionToJson(
  _WatchProviderRegion instance,
) => <String, dynamic>{
  'link': instance.link,
  'flatrate': instance.flatrate,
  'buy': instance.buy,
  'rent': instance.rent,
  'free': instance.free,
};

_ProviderDetail _$ProviderDetailFromJson(Map<String, dynamic> json) =>
    _ProviderDetail(
      logoPath: json['logo_path'] as String?,
      providerId: (json['provider_id'] as num?)?.toInt(),
      providerName: json['provider_name'] as String?,
      displayPriority: (json['display_priority'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProviderDetailToJson(_ProviderDetail instance) =>
    <String, dynamic>{
      'logo_path': instance.logoPath,
      'provider_id': instance.providerId,
      'provider_name': instance.providerName,
      'display_priority': instance.displayPriority,
    };
