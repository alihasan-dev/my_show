import 'package:freezed_annotation/freezed_annotation.dart';
part 'popular_people_model.freezed.dart';
part 'popular_people_model.g.dart';

@freezed
sealed class PopularPeopleModel with _$PopularPeopleModel {

  const factory PopularPeopleModel({
    int? page,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResults,
    List<People>? results,
  }) = _PopularPeopleModel;

  factory PopularPeopleModel.fromJson(Map<String, dynamic> json) => _$PopularPeopleModelFromJson(json); 

}

@freezed
sealed class People with _$People {

  const factory People({
    bool? adult,
    int? gender,
    int? id,
    @JsonKey(name: 'known_for_department') String? knownForDepartment,
    String? name,
    @JsonKey(name: 'original_name') String? originalName,
    double? popularity,
    @JsonKey(name: 'profile_path') String? profilePath,
  }) = _People;

  factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);
}