import 'package:freezed_annotation/freezed_annotation.dart';
part 'popular_people_model.freezed.dart';
part 'popular_people_model.g.dart';

@freezed
sealed class PopularPeopleModel with _$PopularPeopleModel {

  const factory PopularPeopleModel({
    final int? page,
    @JsonKey(name: 'total_pages') final int? totalPages,
    @JsonKey(name: 'total_results') final int? totalResults,
    final List<People>? results,
  }) = _PopularPeopleModel;

  factory PopularPeopleModel.fromJson(Map<String, dynamic> json) => _$PopularPeopleModelFromJson(json); 

}

@freezed
sealed class People with _$People {

  const factory People({
    final bool? adult,
    final int? gender,
    final int? id,
    @JsonKey(name: 'known_for_department') final String? knownForDepartment,
    final String? name,
    @JsonKey(name: 'original_name') final String? originalName,
    final double? popularity,
    @JsonKey(name: 'profile_path') final String? profilePath,
  }) = _People;

  factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);
}