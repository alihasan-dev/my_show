import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast_model.freezed.dart';
part 'cast_model.g.dart';

@freezed
sealed class CastModel with _$CastModel {
  const factory CastModel({
    int? id,
    List<Cast>? cast,
    List<Crew>? crew,
  }) = _CastModel;

  factory CastModel.fromJson(Map<String, dynamic> json) => _$CastModelFromJson(json);
}

@freezed
sealed class Cast with _$Cast {
  const factory Cast({
    bool? adult,
    int? gender,
    int? id,
    @JsonKey(name: 'known_for_department') String? knownFordepartment,
    String? name,
    @JsonKey(name: 'original_name') String? originalName,
    double? popularity,
    @JsonKey(name: 'profile_path') String? profilePath,
    @JsonKey(name: 'cast_id') int? castId,
    @JsonKey(name: 'character') String? character,
    @JsonKey(name: 'credit_id') String? creditId,
    @JsonKey(name: 'order') int? order
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
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