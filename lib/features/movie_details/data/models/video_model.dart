import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
sealed class VideoModel with _$VideoModel {
  const factory VideoModel({
    final int? id,
    final List<Results>? results,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) => _$VideoModelFromJson(json);
}

@freezed
sealed class Results with _$Results {
  const factory Results({
    final String? id,
    @JsonKey(name: 'iso_639_1') final String? iso6391,
    @JsonKey(name: 'iso_3166_1') final String? iso31661,
    final String? key,
    final String? name,
    final String? site,
    final int? size,
    final String? type,
    final bool? official,
    @JsonKey(name: 'published_at') final String? publishedAt
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) => _$ResultsFromJson(json);
} 
