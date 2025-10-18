import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_credit_model.freezed.dart';
part 'movie_credit_model.g.dart';

@freezed
sealed class MovieCreditModel with _$MovieCreditModel {
  const factory MovieCreditModel({
    final int? id,
    final List<Cast>? cast
  }) = _MovieCreditModel;

  factory MovieCreditModel.fromJson(Map<String, dynamic> json) => _$MovieCreditModelFromJson(json); 
}

@freezed
sealed class Cast with _$Cast {
  const factory Cast({
    final bool? adult,
    @JsonKey(name: 'backdrop_path') final String? backdropPath,
    @JsonKey(name: 'genre_ids') final List<int>? genreId,
    final int? id,
    @JsonKey(name: 'original_language') final String? originalLanguage,
    @JsonKey(name: 'original_title') final String? originalTitle,
    final String? overview,
    final double? popularity,
    @JsonKey(name: 'poster_path') final String? posterPath,
    @JsonKey(name: 'release_date') final String? releaseDate,
    final String? title,
    final bool? video,
    @JsonKey(name: 'vote_average') final double? voteAverage,
    @JsonKey(name: 'vote_count') final int? voteCount,
    final String? character,
    @JsonKey(name: 'credit_id') final String? creditId,
    final int? order
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}

