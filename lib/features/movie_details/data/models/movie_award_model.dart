import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_award_model.freezed.dart';
part 'movie_award_model.g.dart';
@freezed
sealed class AwardModel with _$AwardModel {
  const factory AwardModel({
    @JsonKey(name: 'Title') final String? title,
    @JsonKey(name: 'Year') final String? year,
    @JsonKey(name: 'Rated') final String? rated,
    @JsonKey(name: 'Released') final String? released,
    @JsonKey(name: 'Runtime') final String? runtime,
    @JsonKey(name: 'Genre') final String? genre,
    @JsonKey(name: 'Director') final String? director,
    @JsonKey(name: 'Writer') final String? writer,
    @JsonKey(name: 'Actors') final String? actors,
    @JsonKey(name: 'Plot') final String? plot,
    @JsonKey(name: 'Language') final String? language,
    @JsonKey(name: 'Country') final String? country,
    @JsonKey(name: 'Awards') final String? awards,
    @JsonKey(name: 'Poster') final String? poster,
    @JsonKey(name: 'Ratings') final List<Ratings>? ratings,
    @JsonKey(name: 'Metascore') final String? metascrore,
    @JsonKey(name: 'imdbRating') final String? imdbRating,
    @JsonKey(name: 'imdbVotes') final String? imdbVotes,
    @JsonKey(name: 'imdbID') final String? imdbID,
    @JsonKey(name: 'Type') final String? type,
    @JsonKey(name: 'DVD') final String? dvd,
    @JsonKey(name: 'BoxOffice') final String? boxOffice,
    @JsonKey(name: 'Production') final String? production,
    @JsonKey(name: 'Website') final String? website,
    @JsonKey(name: 'Response') final String? respnse,
  }) = _AwardModel;

  factory AwardModel.fromJson(Map<String, dynamic> json) => _$AwardModelFromJson(json);
}

@freezed
sealed class Ratings with _$Ratings {
  const factory Ratings({
    @JsonKey(name: 'Source') final String? source,
    @JsonKey(name: 'Value') final String? value
  }) = _Ratings;

  factory Ratings.fromJson(Map<String, dynamic> json) => _$RatingsFromJson(json);
}