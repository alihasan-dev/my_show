import 'package:freezed_annotation/freezed_annotation.dart';
part 'watch_provider_model.freezed.dart';
part 'watch_provider_model.g.dart';

@freezed
sealed class WatchProviderModel with _$WatchProviderModel {
  const factory WatchProviderModel({
    final int? id,
    final Map<String, WatchProviderRegion>? results,
  }) = _WatchProviderModel;

  factory WatchProviderModel.fromJson(Map<String, dynamic> json) =>
      _$WatchProviderModelFromJson(json);
}

@freezed
sealed class WatchProviderRegion with _$WatchProviderRegion {
  const factory WatchProviderRegion({
    final String? link,
    final List<ProviderDetail>? flatrate,
    final List<ProviderDetail>? buy,
    final List<ProviderDetail>? rent,
    final List<ProviderDetail>? free,
  }) = _WatchProviderRegion;

  factory WatchProviderRegion.fromJson(Map<String, dynamic> json) =>
      _$WatchProviderRegionFromJson(json);
}

@freezed
sealed class ProviderDetail with _$ProviderDetail {
  const factory ProviderDetail({
    @JsonKey(name: 'logo_path')
    final String? logoPath,

    @JsonKey(name: 'provider_id')
    final int? providerId,

    @JsonKey(name: 'provider_name')
    final String? providerName,

    @JsonKey(name: 'display_priority')
    final int? displayPriority,
  }) = _ProviderDetail;

  factory ProviderDetail.fromJson(Map<String, dynamic> json) =>
      _$ProviderDetailFromJson(json);
}