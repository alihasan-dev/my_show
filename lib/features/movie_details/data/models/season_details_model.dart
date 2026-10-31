import 'package:freezed_annotation/freezed_annotation.dart';
part 'season_details_model.freezed.dart';
part 'season_details_model.g.dart';

@freezed
sealed class SeasonDetailsModel with _$SeasonDetailsModel {
  const factory SeasonDetailsModel({
    int? id,
    @JsonKey(name: '_id') String? hashId,
    @JsonKey(name: 'air_date') String? airDate,
    List<Episode>? episodes,
    String? name,
    List<Network>? networks,
    String? overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'season_number') int? seasonNumber,
    @JsonKey(name: 'vote_average') double? voteAverage
  }) = _SeasonDetailsModel;

  factory SeasonDetailsModel.fromJson(Map<String, dynamic> json) => _$SeasonDetailsModelFromJson(json);
}

@freezed
sealed class Episode with _$Episode {
  const factory Episode({
    @JsonKey(name: 'air_date') String? airDate,
    @JsonKey(name: 'episode_number') int? episodeNumber,
    @JsonKey(name: 'episode_type') String? episodeType,
    int? id,
    String? name,
    String? overview,
    @JsonKey(name: 'production_code') String? productionCode,
    int? runtime,
    @JsonKey(name: 'season_number') int? seasonNumber,
    @JsonKey(name: 'show_id') int? showId,
    @JsonKey(name: 'still_path') String? stillPath,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
    List<Crew>? crew,
    @JsonKey(name: 'guest_stars') List<GuestStar>? guestStars
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) => _$EpisodeFromJson(json);
} 

@freezed
sealed class Crew with _$Crew {
  const factory Crew({
    bool? adult,
    int? gender,
    int? id,
    @JsonKey(name: 'known_for_department') String? knownFordepartment,
    String? name,
    @JsonKey(name: 'original_name') String? originalName,
    double? popularity,
    @JsonKey(name: 'profile_path') String? profilePath,
    @JsonKey(name: 'credit_id') String? creditId,
    String? department,
    String? job
  }) = _Crew;

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);
} 

@freezed
sealed class GuestStar with _$GuestStar {
  const factory GuestStar({
    bool? adult,
    int? gender,
    int? id,
    int? order,
    @JsonKey(name: 'known_for_department') String? knownFordepartment,
    String? name,
    @JsonKey(name: 'original_name') String? originalName,
    double? popularity,
    @JsonKey(name: 'profile_path') String? profilePath,
    @JsonKey(name: 'credit_id') String? creditId,
    String? character,
  }) = _GuestStar;

  factory GuestStar.fromJson(Map<String, dynamic> json) => _$GuestStarFromJson(json);
} 

@freezed
sealed class Network with _$Network {
  const factory Network({
    int? id,
    String? name,
    @JsonKey(name: 'origin_country') String? originalCountry,
    @JsonKey(name: 'logo_path') String? logoPath,
  }) = _Network;

  factory Network.fromJson(Map<String, dynamic> json) => _$NetworkFromJson(json);
} 