import 'package:freezed_annotation/freezed_annotation.dart';
part 'watch_provider_model.freezed.dart';
part 'watch_provider_model.g.dart';

@freezed
sealed class WatchProviderModel with _$WatchProviderModel {
  const factory WatchProviderModel({
    int? id,
    Map<String, WatchProviderRegion>? results,
  }) = _WatchProviderModel;

  factory WatchProviderModel.fromJson(Map<String, dynamic> json) =>
      _$WatchProviderModelFromJson(json);
}

@freezed
sealed class WatchProviderRegion with _$WatchProviderRegion {
  const factory WatchProviderRegion({
    String? link,
    List<ProviderDetail>? flatrate,
    List<ProviderDetail>? buy,
    List<ProviderDetail>? rent,
    List<ProviderDetail>? free,
  }) = _WatchProviderRegion;

  factory WatchProviderRegion.fromJson(Map<String, dynamic> json) =>
      _$WatchProviderRegionFromJson(json);
}

@freezed
sealed class ProviderDetail with _$ProviderDetail {
  const factory ProviderDetail({
    @JsonKey(name: 'logo_path')
    String? logoPath,

    @JsonKey(name: 'provider_id')
    int? providerId,

    @JsonKey(name: 'provider_name')
    String? providerName,

    @JsonKey(name: 'display_priority')
    int? displayPriority,
  }) = _ProviderDetail;

  factory ProviderDetail.fromJson(Map<String, dynamic> json) =>
      _$ProviderDetailFromJson(json);
}