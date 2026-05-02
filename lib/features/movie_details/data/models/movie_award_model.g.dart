// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_award_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AwardModel _$AwardModelFromJson(Map<String, dynamic> json) => _AwardModel(
  title: json['Title'] as String?,
  year: json['Year'] as String?,
  rated: json['Rated'] as String?,
  released: json['Released'] as String?,
  runtime: json['Runtime'] as String?,
  genre: json['Genre'] as String?,
  director: json['Director'] as String?,
  writer: json['Writer'] as String?,
  actors: json['Actors'] as String?,
  plot: json['Plot'] as String?,
  language: json['Language'] as String?,
  country: json['Country'] as String?,
  awards: json['Awards'] as String?,
  poster: json['Poster'] as String?,
  ratings: (json['Ratings'] as List<dynamic>?)
      ?.map((e) => Ratings.fromJson(e as Map<String, dynamic>))
      .toList(),
  metascrore: json['Metascore'] as String?,
  imdbRating: json['imdbRating'] as String?,
  imdbVotes: json['imdbVotes'] as String?,
  imdbID: json['imdbID'] as String?,
  type: json['Type'] as String?,
  dvd: json['DVD'] as String?,
  boxOffice: json['BoxOffice'] as String?,
  production: json['Production'] as String?,
  website: json['Website'] as String?,
  respnse: json['Response'] as String?,
);

Map<String, dynamic> _$AwardModelToJson(_AwardModel instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'Year': instance.year,
      'Rated': instance.rated,
      'Released': instance.released,
      'Runtime': instance.runtime,
      'Genre': instance.genre,
      'Director': instance.director,
      'Writer': instance.writer,
      'Actors': instance.actors,
      'Plot': instance.plot,
      'Language': instance.language,
      'Country': instance.country,
      'Awards': instance.awards,
      'Poster': instance.poster,
      'Ratings': instance.ratings,
      'Metascore': instance.metascrore,
      'imdbRating': instance.imdbRating,
      'imdbVotes': instance.imdbVotes,
      'imdbID': instance.imdbID,
      'Type': instance.type,
      'DVD': instance.dvd,
      'BoxOffice': instance.boxOffice,
      'Production': instance.production,
      'Website': instance.website,
      'Response': instance.respnse,
    };

_Ratings _$RatingsFromJson(Map<String, dynamic> json) => _Ratings(
  source: json['Source'] as String?,
  value: json['Value'] as String?,
);

Map<String, dynamic> _$RatingsToJson(_Ratings instance) => <String, dynamic>{
  'Source': instance.source,
  'Value': instance.value,
};
