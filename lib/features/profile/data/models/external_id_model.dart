import 'package:freezed_annotation/freezed_annotation.dart';
part 'external_id_model.freezed.dart';
part 'external_id_model.g.dart';

@freezed
sealed class ExternlIDModel with _$ExternlIDModel {
  const factory ExternlIDModel({
    int? id,
    @JsonKey(name: 'freebase_mid') String? freebaseMid,
    @JsonKey(name: 'freebase_id') String? freebaseId,
    @JsonKey(name: 'imdb_id') String? imdbId,
    @JsonKey(name: 'tvrage_id') String? tvrageId,
    @JsonKey(name: 'wikidata_id') String? wikidataId,
    @JsonKey(name: 'facebook_id') String? facebookId,
    @JsonKey(name: 'instagram_id') String? instagramId,
    @JsonKey(name: 'tiktok_id') String? tiktokId,
    @JsonKey(name: 'twitter_id') String? twitterId,
    @JsonKey(name: 'youtube_id') String? youtubeId,
  }) = _ExternlIDModel;

  factory ExternlIDModel.fromJson(Map<String, dynamic> json) => _$ExternlIDModelFromJson(json); 
}