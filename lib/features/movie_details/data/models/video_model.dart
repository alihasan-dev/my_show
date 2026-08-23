import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
sealed class VideoModel with _$VideoModel {
  const factory VideoModel({
    int? id,
    List<Results>? results,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) => _$VideoModelFromJson(json);
}

@freezed
sealed class Results with _$Results {
  const factory Results({
    String? id,
    @JsonKey(name: 'iso_639_1') String? iso6391,
    @JsonKey(name: 'iso_3166_1') String? iso31661,
    String? key,
    String? name,
    String? site,
    int? size,
    String? type,
    bool? official,
    @JsonKey(name: 'published_at') String? publishedAt
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) => _$ResultsFromJson(json);
} 
