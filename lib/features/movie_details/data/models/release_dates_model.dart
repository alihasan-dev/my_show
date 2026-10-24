import 'package:freezed_annotation/freezed_annotation.dart';

part 'release_dates_model.freezed.dart';
part 'release_dates_model.g.dart';

@freezed
sealed class ReleaseDatesModel with _$ReleaseDatesModel {
  const factory ReleaseDatesModel({
    int? id,
    List<Results>? results,
  }) = _ReleaseDatesModel;

  factory ReleaseDatesModel.fromJson(Map<String, dynamic> json) => _$ReleaseDatesModelFromJson(json);
}

@freezed
sealed class Results with _$Results {
  const factory Results({
    @JsonKey(name: 'iso_3166_1') String? iso3611,
    @JsonKey(name: 'release_dates') List<ReleaseDates>? releaseDates,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) => _$ResultsFromJson(json);
} 

@freezed
sealed class ReleaseDates with _$ReleaseDates {
  const factory ReleaseDates({
    String? certification,
    List<String>? descriptors,
    @JsonKey(name: 'iso_639_1') String? iso639,
    String? note,
    @JsonKey(name: 'release_date') String? releaseDate,
    int? type
  }) = _ReleaseDates;

  factory ReleaseDates.fromJson(Map<String, dynamic> json) => _$ReleaseDatesFromJson(json);
} 