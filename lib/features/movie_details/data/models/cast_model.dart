import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast_model.freezed.dart';
part 'cast_model.g.dart';

@freezed
sealed class CastModel with _$CastModel {
  const factory CastModel({
    final int? id,
    final List<Cast>? cast,
    final List<Crew>? crew,
  }) = _CastModel;

  factory CastModel.fromJson(Map<String, dynamic> json) => _$CastModelFromJson(json);
}

@freezed
sealed class Cast with _$Cast {
  const factory Cast({
    final bool? adult,
    final int? gender,
    final int? id,
    @JsonKey(name: 'known_for_department') final String? knownFordepartment,
    final String? name,
    @JsonKey(name: 'original_name') final String? originalName,
    final double? popularity,
    @JsonKey(name: 'profile_path') final String? profilePath,
    @JsonKey(name: 'cast_id') final int? castId,
    @JsonKey(name: 'character') final String? character,
    @JsonKey(name: 'credit_id') final String? creditId,
    @JsonKey(name: 'order') final int? order
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
} 

@freezed
sealed class Crew with _$Crew {
  const factory Crew({
    final bool? adult,
    final int? gender,
    final int? id,
    @JsonKey(name: 'known_for_department') final String? knownFordepartment,
    final String? name,
    @JsonKey(name: 'original_name') final String? originalName,
    final double? popularity,
    @JsonKey(name: 'profile_path') final String? profilePath,
    @JsonKey(name: 'credit_id') final String? creditId,
    final String? department,
    final String? job
  }) = _Crew;

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);
} 