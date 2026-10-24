import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_details_model.freezed.dart';
part 'profile_details_model.g.dart';

@freezed
sealed class ProfileDetailsModel with _$ProfileDetailsModel {
  const factory ProfileDetailsModel({
    bool? adult,
    @JsonKey(name: 'also_known_as') List<String>? knownFor,
    String? biography,
    String? birthday,
    String? deathday,
    int? gender,
    String? homepage,
    int? id,
    @JsonKey(name: 'imdb_id') String? imdbId,
    @JsonKey(name: 'known_for_department') String? knownForDepartment,
    String? name,
    @JsonKey(name: 'place_of_birth') String? birthPlace,
    double? popularity,
    @JsonKey(name: 'profile_path') String? profilePath,
  }) = _ProfileDetailsModel;

  factory ProfileDetailsModel.fromJson(Map<String, dynamic> json) => _$ProfileDetailsModelFromJson(json); 
}
