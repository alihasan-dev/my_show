import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_credit_model.freezed.dart';
part 'movie_credit_model.g.dart';

@freezed
sealed class MovieCreditModel with _$MovieCreditModel {
  const factory MovieCreditModel({
    int? id,
    List<Cast>? cast
  }) = _MovieCreditModel;

  factory MovieCreditModel.fromJson(Map<String, dynamic> json) => _$MovieCreditModelFromJson(json); 
}

@freezed
sealed class Cast with _$Cast {
  const factory Cast({
    bool? adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'genre_ids') List<int>? genreId,
    int? id,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    String? overview,
    double? popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
    String? title,
    bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
    String? character,
    @JsonKey(name: 'credit_id') String? creditId,
    int? order
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}

