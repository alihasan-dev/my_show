import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_award_model.freezed.dart';
part 'movie_award_model.g.dart';
@freezed
sealed class AwardModel with _$AwardModel {
  const factory AwardModel({
    @JsonKey(name: 'Title') String? title,
    @JsonKey(name: 'Year') String? year,
    @JsonKey(name: 'Rated') String? rated,
    @JsonKey(name: 'Released') String? released,
    @JsonKey(name: 'Runtime') String? runtime,
    @JsonKey(name: 'Genre') String? genre,
    @JsonKey(name: 'Director') String? director,
    @JsonKey(name: 'Writer') String? writer,
    @JsonKey(name: 'Actors') String? actors,
    @JsonKey(name: 'Plot') String? plot,
    @JsonKey(name: 'Language') String? language,
    @JsonKey(name: 'Country') String? country,
    @JsonKey(name: 'Awards') String? awards,
    @JsonKey(name: 'Poster') String? poster,
    @JsonKey(name: 'Ratings') List<Ratings>? ratings,
    @JsonKey(name: 'Metascore') String? metascrore,
    @JsonKey(name: 'imdbRating') String? imdbRating,
    @JsonKey(name: 'imdbVotes') String? imdbVotes,
    @JsonKey(name: 'imdbID') String? imdbID,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'DVD') String? dvd,
    @JsonKey(name: 'BoxOffice') String? boxOffice,
    @JsonKey(name: 'Production') String? production,
    @JsonKey(name: 'Website') String? website,
    @JsonKey(name: 'Response') String? respnse,
  }) = _AwardModel;

  factory AwardModel.fromJson(Map<String, dynamic> json) => _$AwardModelFromJson(json);
}

@freezed
sealed class Ratings with _$Ratings {
  const factory Ratings({
    @JsonKey(name: 'Source') String? source,
    @JsonKey(name: 'Value') String? value
  }) = _Ratings;

  factory Ratings.fromJson(Map<String, dynamic> json) => _$RatingsFromJson(json);
}