import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_keyword_model.freezed.dart';
part 'movie_keyword_model.g.dart';

@freezed
sealed class MovieKeywordModel with _$MovieKeywordModel {
  const factory MovieKeywordModel({
    int? id,
    List<Keyword>? keywords,
    @JsonKey(name: 'results') List<Keyword>? results,
  }) = _MovieKeywordModel;

  factory MovieKeywordModel.fromJson(Map<String, dynamic> json) => _$MovieKeywordModelFromJson(json);
}

@freezed
sealed class Keyword with _$Keyword {
  const factory Keyword({
    int? id,
    String? name,
  }) = _Keyword;

  factory Keyword.fromJson(Map<String, dynamic> json) => _$KeywordFromJson(json);
} 
