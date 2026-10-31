import 'package:freezed_annotation/freezed_annotation.dart';
part 'episode_details_model.freezed.dart';
part 'episode_details_model.g.dart';

@freezed
sealed class EpisodeDetailsModel with _$EpisodeDetailsModel {
  const factory EpisodeDetailsModel({
    int? id,
    @JsonKey(name: 'air_date') String? airDate,
    List<Crew>? crew,
    @JsonKey(name: 'episode_number') int? episodeNumber,
    @JsonKey(name: 'episode_type') String? episodeType,
    @JsonKey(name: 'guest_stars') List<GuestStar>? guestStars,
    String? name,
    String? overview,
    @JsonKey(name: 'production_code') String? productionCode,
    int? runtime,
    @JsonKey(name: 'season_number') int? seasonNumber,
    @JsonKey(name: 'still_path') String? stillPath,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _EpisodeDetailsModel;

  factory EpisodeDetailsModel.fromJson(Map<String, dynamic> json) => _$EpisodeDetailsModelFromJson(json);
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