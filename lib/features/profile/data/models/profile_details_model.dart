import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_details_model.freezed.dart';
part 'profile_details_model.g.dart';

@freezed
sealed class ProfileDetailsModel with _$ProfileDetailsModel {
  const factory ProfileDetailsModel({
    final bool? adult,
    @JsonKey(name: 'also_known_as') final List<String>? knownFor,
    final String? biography,
    final String? birthday,
    final String? deathday,
    final int? gender,
    final String? homepage,
    final int? id,
    @JsonKey(name: 'imdb_id') final String? imdbId,
    @JsonKey(name: 'known_for_department') final String? knownForDepartment,
    final String? name,
    @JsonKey(name: 'place_of_birth') final String? birthPlace,
    final double? popularity,
    @JsonKey(name: 'profile_path') final String? profilePath,
  }) = _ProfileDetailsModel;

  factory ProfileDetailsModel.fromJson(Map<String, dynamic> json) => _$ProfileDetailsModelFromJson(json); 
}
