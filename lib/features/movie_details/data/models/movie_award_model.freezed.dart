// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_award_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AwardModel {

@JsonKey(name: 'Title') String? get title;@JsonKey(name: 'Year') String? get year;@JsonKey(name: 'Rated') String? get rated;@JsonKey(name: 'Released') String? get released;@JsonKey(name: 'Runtime') String? get runtime;@JsonKey(name: 'Genre') String? get genre;@JsonKey(name: 'Director') String? get director;@JsonKey(name: 'Writer') String? get writer;@JsonKey(name: 'Actors') String? get actors;@JsonKey(name: 'Plot') String? get plot;@JsonKey(name: 'Language') String? get language;@JsonKey(name: 'Country') String? get country;@JsonKey(name: 'Awards') String? get awards;@JsonKey(name: 'Poster') String? get poster;@JsonKey(name: 'Ratings') List<Ratings>? get ratings;@JsonKey(name: 'Metascore') String? get metascrore;@JsonKey(name: 'imdbRating') String? get imdbRating;@JsonKey(name: 'imdbVotes') String? get imdbVotes;@JsonKey(name: 'imdbID') String? get imdbID;@JsonKey(name: 'Type') String? get type;@JsonKey(name: 'DVD') String? get dvd;@JsonKey(name: 'BoxOffice') String? get boxOffice;@JsonKey(name: 'Production') String? get production;@JsonKey(name: 'Website') String? get website;@JsonKey(name: 'Response') String? get respnse;
/// Create a copy of AwardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AwardModelCopyWith<AwardModel> get copyWith => _$AwardModelCopyWithImpl<AwardModel>(this as AwardModel, _$identity);

  /// Serializes this AwardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AwardModel&&(identical(other.title, title) || other.title == title)&&(identical(other.year, year) || other.year == year)&&(identical(other.rated, rated) || other.rated == rated)&&(identical(other.released, released) || other.released == released)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.director, director) || other.director == director)&&(identical(other.writer, writer) || other.writer == writer)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.plot, plot) || other.plot == plot)&&(identical(other.language, language) || other.language == language)&&(identical(other.country, country) || other.country == country)&&(identical(other.awards, awards) || other.awards == awards)&&(identical(other.poster, poster) || other.poster == poster)&&const DeepCollectionEquality().equals(other.ratings, ratings)&&(identical(other.metascrore, metascrore) || other.metascrore == metascrore)&&(identical(other.imdbRating, imdbRating) || other.imdbRating == imdbRating)&&(identical(other.imdbVotes, imdbVotes) || other.imdbVotes == imdbVotes)&&(identical(other.imdbID, imdbID) || other.imdbID == imdbID)&&(identical(other.type, type) || other.type == type)&&(identical(other.dvd, dvd) || other.dvd == dvd)&&(identical(other.boxOffice, boxOffice) || other.boxOffice == boxOffice)&&(identical(other.production, production) || other.production == production)&&(identical(other.website, website) || other.website == website)&&(identical(other.respnse, respnse) || other.respnse == respnse));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,title,year,rated,released,runtime,genre,director,writer,actors,plot,language,country,awards,poster,const DeepCollectionEquality().hash(ratings),metascrore,imdbRating,imdbVotes,imdbID,type,dvd,boxOffice,production,website,respnse]);

@override
String toString() {
  return 'AwardModel(title: $title, year: $year, rated: $rated, released: $released, runtime: $runtime, genre: $genre, director: $director, writer: $writer, actors: $actors, plot: $plot, language: $language, country: $country, awards: $awards, poster: $poster, ratings: $ratings, metascrore: $metascrore, imdbRating: $imdbRating, imdbVotes: $imdbVotes, imdbID: $imdbID, type: $type, dvd: $dvd, boxOffice: $boxOffice, production: $production, website: $website, respnse: $respnse)';
}


}

/// @nodoc
abstract mixin class $AwardModelCopyWith<$Res>  {
  factory $AwardModelCopyWith(AwardModel value, $Res Function(AwardModel) _then) = _$AwardModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Title') String? title,@JsonKey(name: 'Year') String? year,@JsonKey(name: 'Rated') String? rated,@JsonKey(name: 'Released') String? released,@JsonKey(name: 'Runtime') String? runtime,@JsonKey(name: 'Genre') String? genre,@JsonKey(name: 'Director') String? director,@JsonKey(name: 'Writer') String? writer,@JsonKey(name: 'Actors') String? actors,@JsonKey(name: 'Plot') String? plot,@JsonKey(name: 'Language') String? language,@JsonKey(name: 'Country') String? country,@JsonKey(name: 'Awards') String? awards,@JsonKey(name: 'Poster') String? poster,@JsonKey(name: 'Ratings') List<Ratings>? ratings,@JsonKey(name: 'Metascore') String? metascrore,@JsonKey(name: 'imdbRating') String? imdbRating,@JsonKey(name: 'imdbVotes') String? imdbVotes,@JsonKey(name: 'imdbID') String? imdbID,@JsonKey(name: 'Type') String? type,@JsonKey(name: 'DVD') String? dvd,@JsonKey(name: 'BoxOffice') String? boxOffice,@JsonKey(name: 'Production') String? production,@JsonKey(name: 'Website') String? website,@JsonKey(name: 'Response') String? respnse
});




}
/// @nodoc
class _$AwardModelCopyWithImpl<$Res>
    implements $AwardModelCopyWith<$Res> {
  _$AwardModelCopyWithImpl(this._self, this._then);

  final AwardModel _self;
  final $Res Function(AwardModel) _then;

/// Create a copy of AwardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? year = freezed,Object? rated = freezed,Object? released = freezed,Object? runtime = freezed,Object? genre = freezed,Object? director = freezed,Object? writer = freezed,Object? actors = freezed,Object? plot = freezed,Object? language = freezed,Object? country = freezed,Object? awards = freezed,Object? poster = freezed,Object? ratings = freezed,Object? metascrore = freezed,Object? imdbRating = freezed,Object? imdbVotes = freezed,Object? imdbID = freezed,Object? type = freezed,Object? dvd = freezed,Object? boxOffice = freezed,Object? production = freezed,Object? website = freezed,Object? respnse = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String?,rated: freezed == rated ? _self.rated : rated // ignore: cast_nullable_to_non_nullable
as String?,released: freezed == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,director: freezed == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String?,writer: freezed == writer ? _self.writer : writer // ignore: cast_nullable_to_non_nullable
as String?,actors: freezed == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String?,plot: freezed == plot ? _self.plot : plot // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,awards: freezed == awards ? _self.awards : awards // ignore: cast_nullable_to_non_nullable
as String?,poster: freezed == poster ? _self.poster : poster // ignore: cast_nullable_to_non_nullable
as String?,ratings: freezed == ratings ? _self.ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<Ratings>?,metascrore: freezed == metascrore ? _self.metascrore : metascrore // ignore: cast_nullable_to_non_nullable
as String?,imdbRating: freezed == imdbRating ? _self.imdbRating : imdbRating // ignore: cast_nullable_to_non_nullable
as String?,imdbVotes: freezed == imdbVotes ? _self.imdbVotes : imdbVotes // ignore: cast_nullable_to_non_nullable
as String?,imdbID: freezed == imdbID ? _self.imdbID : imdbID // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,dvd: freezed == dvd ? _self.dvd : dvd // ignore: cast_nullable_to_non_nullable
as String?,boxOffice: freezed == boxOffice ? _self.boxOffice : boxOffice // ignore: cast_nullable_to_non_nullable
as String?,production: freezed == production ? _self.production : production // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,respnse: freezed == respnse ? _self.respnse : respnse // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AwardModel].
extension AwardModelPatterns on AwardModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AwardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AwardModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AwardModel value)  $default,){
final _that = this;
switch (_that) {
case _AwardModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AwardModel value)?  $default,){
final _that = this;
switch (_that) {
case _AwardModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Title')  String? title, @JsonKey(name: 'Year')  String? year, @JsonKey(name: 'Rated')  String? rated, @JsonKey(name: 'Released')  String? released, @JsonKey(name: 'Runtime')  String? runtime, @JsonKey(name: 'Genre')  String? genre, @JsonKey(name: 'Director')  String? director, @JsonKey(name: 'Writer')  String? writer, @JsonKey(name: 'Actors')  String? actors, @JsonKey(name: 'Plot')  String? plot, @JsonKey(name: 'Language')  String? language, @JsonKey(name: 'Country')  String? country, @JsonKey(name: 'Awards')  String? awards, @JsonKey(name: 'Poster')  String? poster, @JsonKey(name: 'Ratings')  List<Ratings>? ratings, @JsonKey(name: 'Metascore')  String? metascrore, @JsonKey(name: 'imdbRating')  String? imdbRating, @JsonKey(name: 'imdbVotes')  String? imdbVotes, @JsonKey(name: 'imdbID')  String? imdbID, @JsonKey(name: 'Type')  String? type, @JsonKey(name: 'DVD')  String? dvd, @JsonKey(name: 'BoxOffice')  String? boxOffice, @JsonKey(name: 'Production')  String? production, @JsonKey(name: 'Website')  String? website, @JsonKey(name: 'Response')  String? respnse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AwardModel() when $default != null:
return $default(_that.title,_that.year,_that.rated,_that.released,_that.runtime,_that.genre,_that.director,_that.writer,_that.actors,_that.plot,_that.language,_that.country,_that.awards,_that.poster,_that.ratings,_that.metascrore,_that.imdbRating,_that.imdbVotes,_that.imdbID,_that.type,_that.dvd,_that.boxOffice,_that.production,_that.website,_that.respnse);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Title')  String? title, @JsonKey(name: 'Year')  String? year, @JsonKey(name: 'Rated')  String? rated, @JsonKey(name: 'Released')  String? released, @JsonKey(name: 'Runtime')  String? runtime, @JsonKey(name: 'Genre')  String? genre, @JsonKey(name: 'Director')  String? director, @JsonKey(name: 'Writer')  String? writer, @JsonKey(name: 'Actors')  String? actors, @JsonKey(name: 'Plot')  String? plot, @JsonKey(name: 'Language')  String? language, @JsonKey(name: 'Country')  String? country, @JsonKey(name: 'Awards')  String? awards, @JsonKey(name: 'Poster')  String? poster, @JsonKey(name: 'Ratings')  List<Ratings>? ratings, @JsonKey(name: 'Metascore')  String? metascrore, @JsonKey(name: 'imdbRating')  String? imdbRating, @JsonKey(name: 'imdbVotes')  String? imdbVotes, @JsonKey(name: 'imdbID')  String? imdbID, @JsonKey(name: 'Type')  String? type, @JsonKey(name: 'DVD')  String? dvd, @JsonKey(name: 'BoxOffice')  String? boxOffice, @JsonKey(name: 'Production')  String? production, @JsonKey(name: 'Website')  String? website, @JsonKey(name: 'Response')  String? respnse)  $default,) {final _that = this;
switch (_that) {
case _AwardModel():
return $default(_that.title,_that.year,_that.rated,_that.released,_that.runtime,_that.genre,_that.director,_that.writer,_that.actors,_that.plot,_that.language,_that.country,_that.awards,_that.poster,_that.ratings,_that.metascrore,_that.imdbRating,_that.imdbVotes,_that.imdbID,_that.type,_that.dvd,_that.boxOffice,_that.production,_that.website,_that.respnse);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Title')  String? title, @JsonKey(name: 'Year')  String? year, @JsonKey(name: 'Rated')  String? rated, @JsonKey(name: 'Released')  String? released, @JsonKey(name: 'Runtime')  String? runtime, @JsonKey(name: 'Genre')  String? genre, @JsonKey(name: 'Director')  String? director, @JsonKey(name: 'Writer')  String? writer, @JsonKey(name: 'Actors')  String? actors, @JsonKey(name: 'Plot')  String? plot, @JsonKey(name: 'Language')  String? language, @JsonKey(name: 'Country')  String? country, @JsonKey(name: 'Awards')  String? awards, @JsonKey(name: 'Poster')  String? poster, @JsonKey(name: 'Ratings')  List<Ratings>? ratings, @JsonKey(name: 'Metascore')  String? metascrore, @JsonKey(name: 'imdbRating')  String? imdbRating, @JsonKey(name: 'imdbVotes')  String? imdbVotes, @JsonKey(name: 'imdbID')  String? imdbID, @JsonKey(name: 'Type')  String? type, @JsonKey(name: 'DVD')  String? dvd, @JsonKey(name: 'BoxOffice')  String? boxOffice, @JsonKey(name: 'Production')  String? production, @JsonKey(name: 'Website')  String? website, @JsonKey(name: 'Response')  String? respnse)?  $default,) {final _that = this;
switch (_that) {
case _AwardModel() when $default != null:
return $default(_that.title,_that.year,_that.rated,_that.released,_that.runtime,_that.genre,_that.director,_that.writer,_that.actors,_that.plot,_that.language,_that.country,_that.awards,_that.poster,_that.ratings,_that.metascrore,_that.imdbRating,_that.imdbVotes,_that.imdbID,_that.type,_that.dvd,_that.boxOffice,_that.production,_that.website,_that.respnse);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AwardModel implements AwardModel {
  const _AwardModel({@JsonKey(name: 'Title') this.title, @JsonKey(name: 'Year') this.year, @JsonKey(name: 'Rated') this.rated, @JsonKey(name: 'Released') this.released, @JsonKey(name: 'Runtime') this.runtime, @JsonKey(name: 'Genre') this.genre, @JsonKey(name: 'Director') this.director, @JsonKey(name: 'Writer') this.writer, @JsonKey(name: 'Actors') this.actors, @JsonKey(name: 'Plot') this.plot, @JsonKey(name: 'Language') this.language, @JsonKey(name: 'Country') this.country, @JsonKey(name: 'Awards') this.awards, @JsonKey(name: 'Poster') this.poster, @JsonKey(name: 'Ratings') final  List<Ratings>? ratings, @JsonKey(name: 'Metascore') this.metascrore, @JsonKey(name: 'imdbRating') this.imdbRating, @JsonKey(name: 'imdbVotes') this.imdbVotes, @JsonKey(name: 'imdbID') this.imdbID, @JsonKey(name: 'Type') this.type, @JsonKey(name: 'DVD') this.dvd, @JsonKey(name: 'BoxOffice') this.boxOffice, @JsonKey(name: 'Production') this.production, @JsonKey(name: 'Website') this.website, @JsonKey(name: 'Response') this.respnse}): _ratings = ratings;
  factory _AwardModel.fromJson(Map<String, dynamic> json) => _$AwardModelFromJson(json);

@override@JsonKey(name: 'Title') final  String? title;
@override@JsonKey(name: 'Year') final  String? year;
@override@JsonKey(name: 'Rated') final  String? rated;
@override@JsonKey(name: 'Released') final  String? released;
@override@JsonKey(name: 'Runtime') final  String? runtime;
@override@JsonKey(name: 'Genre') final  String? genre;
@override@JsonKey(name: 'Director') final  String? director;
@override@JsonKey(name: 'Writer') final  String? writer;
@override@JsonKey(name: 'Actors') final  String? actors;
@override@JsonKey(name: 'Plot') final  String? plot;
@override@JsonKey(name: 'Language') final  String? language;
@override@JsonKey(name: 'Country') final  String? country;
@override@JsonKey(name: 'Awards') final  String? awards;
@override@JsonKey(name: 'Poster') final  String? poster;
 final  List<Ratings>? _ratings;
@override@JsonKey(name: 'Ratings') List<Ratings>? get ratings {
  final value = _ratings;
  if (value == null) return null;
  if (_ratings is EqualUnmodifiableListView) return _ratings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'Metascore') final  String? metascrore;
@override@JsonKey(name: 'imdbRating') final  String? imdbRating;
@override@JsonKey(name: 'imdbVotes') final  String? imdbVotes;
@override@JsonKey(name: 'imdbID') final  String? imdbID;
@override@JsonKey(name: 'Type') final  String? type;
@override@JsonKey(name: 'DVD') final  String? dvd;
@override@JsonKey(name: 'BoxOffice') final  String? boxOffice;
@override@JsonKey(name: 'Production') final  String? production;
@override@JsonKey(name: 'Website') final  String? website;
@override@JsonKey(name: 'Response') final  String? respnse;

/// Create a copy of AwardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AwardModelCopyWith<_AwardModel> get copyWith => __$AwardModelCopyWithImpl<_AwardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AwardModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AwardModel&&(identical(other.title, title) || other.title == title)&&(identical(other.year, year) || other.year == year)&&(identical(other.rated, rated) || other.rated == rated)&&(identical(other.released, released) || other.released == released)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.director, director) || other.director == director)&&(identical(other.writer, writer) || other.writer == writer)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.plot, plot) || other.plot == plot)&&(identical(other.language, language) || other.language == language)&&(identical(other.country, country) || other.country == country)&&(identical(other.awards, awards) || other.awards == awards)&&(identical(other.poster, poster) || other.poster == poster)&&const DeepCollectionEquality().equals(other._ratings, _ratings)&&(identical(other.metascrore, metascrore) || other.metascrore == metascrore)&&(identical(other.imdbRating, imdbRating) || other.imdbRating == imdbRating)&&(identical(other.imdbVotes, imdbVotes) || other.imdbVotes == imdbVotes)&&(identical(other.imdbID, imdbID) || other.imdbID == imdbID)&&(identical(other.type, type) || other.type == type)&&(identical(other.dvd, dvd) || other.dvd == dvd)&&(identical(other.boxOffice, boxOffice) || other.boxOffice == boxOffice)&&(identical(other.production, production) || other.production == production)&&(identical(other.website, website) || other.website == website)&&(identical(other.respnse, respnse) || other.respnse == respnse));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,title,year,rated,released,runtime,genre,director,writer,actors,plot,language,country,awards,poster,const DeepCollectionEquality().hash(_ratings),metascrore,imdbRating,imdbVotes,imdbID,type,dvd,boxOffice,production,website,respnse]);

@override
String toString() {
  return 'AwardModel(title: $title, year: $year, rated: $rated, released: $released, runtime: $runtime, genre: $genre, director: $director, writer: $writer, actors: $actors, plot: $plot, language: $language, country: $country, awards: $awards, poster: $poster, ratings: $ratings, metascrore: $metascrore, imdbRating: $imdbRating, imdbVotes: $imdbVotes, imdbID: $imdbID, type: $type, dvd: $dvd, boxOffice: $boxOffice, production: $production, website: $website, respnse: $respnse)';
}


}

/// @nodoc
abstract mixin class _$AwardModelCopyWith<$Res> implements $AwardModelCopyWith<$Res> {
  factory _$AwardModelCopyWith(_AwardModel value, $Res Function(_AwardModel) _then) = __$AwardModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Title') String? title,@JsonKey(name: 'Year') String? year,@JsonKey(name: 'Rated') String? rated,@JsonKey(name: 'Released') String? released,@JsonKey(name: 'Runtime') String? runtime,@JsonKey(name: 'Genre') String? genre,@JsonKey(name: 'Director') String? director,@JsonKey(name: 'Writer') String? writer,@JsonKey(name: 'Actors') String? actors,@JsonKey(name: 'Plot') String? plot,@JsonKey(name: 'Language') String? language,@JsonKey(name: 'Country') String? country,@JsonKey(name: 'Awards') String? awards,@JsonKey(name: 'Poster') String? poster,@JsonKey(name: 'Ratings') List<Ratings>? ratings,@JsonKey(name: 'Metascore') String? metascrore,@JsonKey(name: 'imdbRating') String? imdbRating,@JsonKey(name: 'imdbVotes') String? imdbVotes,@JsonKey(name: 'imdbID') String? imdbID,@JsonKey(name: 'Type') String? type,@JsonKey(name: 'DVD') String? dvd,@JsonKey(name: 'BoxOffice') String? boxOffice,@JsonKey(name: 'Production') String? production,@JsonKey(name: 'Website') String? website,@JsonKey(name: 'Response') String? respnse
});




}
/// @nodoc
class __$AwardModelCopyWithImpl<$Res>
    implements _$AwardModelCopyWith<$Res> {
  __$AwardModelCopyWithImpl(this._self, this._then);

  final _AwardModel _self;
  final $Res Function(_AwardModel) _then;

/// Create a copy of AwardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? year = freezed,Object? rated = freezed,Object? released = freezed,Object? runtime = freezed,Object? genre = freezed,Object? director = freezed,Object? writer = freezed,Object? actors = freezed,Object? plot = freezed,Object? language = freezed,Object? country = freezed,Object? awards = freezed,Object? poster = freezed,Object? ratings = freezed,Object? metascrore = freezed,Object? imdbRating = freezed,Object? imdbVotes = freezed,Object? imdbID = freezed,Object? type = freezed,Object? dvd = freezed,Object? boxOffice = freezed,Object? production = freezed,Object? website = freezed,Object? respnse = freezed,}) {
  return _then(_AwardModel(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String?,rated: freezed == rated ? _self.rated : rated // ignore: cast_nullable_to_non_nullable
as String?,released: freezed == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,director: freezed == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String?,writer: freezed == writer ? _self.writer : writer // ignore: cast_nullable_to_non_nullable
as String?,actors: freezed == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String?,plot: freezed == plot ? _self.plot : plot // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,awards: freezed == awards ? _self.awards : awards // ignore: cast_nullable_to_non_nullable
as String?,poster: freezed == poster ? _self.poster : poster // ignore: cast_nullable_to_non_nullable
as String?,ratings: freezed == ratings ? _self._ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<Ratings>?,metascrore: freezed == metascrore ? _self.metascrore : metascrore // ignore: cast_nullable_to_non_nullable
as String?,imdbRating: freezed == imdbRating ? _self.imdbRating : imdbRating // ignore: cast_nullable_to_non_nullable
as String?,imdbVotes: freezed == imdbVotes ? _self.imdbVotes : imdbVotes // ignore: cast_nullable_to_non_nullable
as String?,imdbID: freezed == imdbID ? _self.imdbID : imdbID // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,dvd: freezed == dvd ? _self.dvd : dvd // ignore: cast_nullable_to_non_nullable
as String?,boxOffice: freezed == boxOffice ? _self.boxOffice : boxOffice // ignore: cast_nullable_to_non_nullable
as String?,production: freezed == production ? _self.production : production // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,respnse: freezed == respnse ? _self.respnse : respnse // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Ratings {

@JsonKey(name: 'Source') String? get source;@JsonKey(name: 'Value') String? get value;
/// Create a copy of Ratings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatingsCopyWith<Ratings> get copyWith => _$RatingsCopyWithImpl<Ratings>(this as Ratings, _$identity);

  /// Serializes this Ratings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ratings&&(identical(other.source, source) || other.source == source)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,value);

@override
String toString() {
  return 'Ratings(source: $source, value: $value)';
}


}

/// @nodoc
abstract mixin class $RatingsCopyWith<$Res>  {
  factory $RatingsCopyWith(Ratings value, $Res Function(Ratings) _then) = _$RatingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Source') String? source,@JsonKey(name: 'Value') String? value
});




}
/// @nodoc
class _$RatingsCopyWithImpl<$Res>
    implements $RatingsCopyWith<$Res> {
  _$RatingsCopyWithImpl(this._self, this._then);

  final Ratings _self;
  final $Res Function(Ratings) _then;

/// Create a copy of Ratings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Ratings].
extension RatingsPatterns on Ratings {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ratings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ratings() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ratings value)  $default,){
final _that = this;
switch (_that) {
case _Ratings():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ratings value)?  $default,){
final _that = this;
switch (_that) {
case _Ratings() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Source')  String? source, @JsonKey(name: 'Value')  String? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ratings() when $default != null:
return $default(_that.source,_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Source')  String? source, @JsonKey(name: 'Value')  String? value)  $default,) {final _that = this;
switch (_that) {
case _Ratings():
return $default(_that.source,_that.value);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Source')  String? source, @JsonKey(name: 'Value')  String? value)?  $default,) {final _that = this;
switch (_that) {
case _Ratings() when $default != null:
return $default(_that.source,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Ratings implements Ratings {
  const _Ratings({@JsonKey(name: 'Source') this.source, @JsonKey(name: 'Value') this.value});
  factory _Ratings.fromJson(Map<String, dynamic> json) => _$RatingsFromJson(json);

@override@JsonKey(name: 'Source') final  String? source;
@override@JsonKey(name: 'Value') final  String? value;

/// Create a copy of Ratings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RatingsCopyWith<_Ratings> get copyWith => __$RatingsCopyWithImpl<_Ratings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RatingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ratings&&(identical(other.source, source) || other.source == source)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,value);

@override
String toString() {
  return 'Ratings(source: $source, value: $value)';
}


}

/// @nodoc
abstract mixin class _$RatingsCopyWith<$Res> implements $RatingsCopyWith<$Res> {
  factory _$RatingsCopyWith(_Ratings value, $Res Function(_Ratings) _then) = __$RatingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Source') String? source,@JsonKey(name: 'Value') String? value
});




}
/// @nodoc
class __$RatingsCopyWithImpl<$Res>
    implements _$RatingsCopyWith<$Res> {
  __$RatingsCopyWithImpl(this._self, this._then);

  final _Ratings _self;
  final $Res Function(_Ratings) _then;

/// Create a copy of Ratings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = freezed,Object? value = freezed,}) {
  return _then(_Ratings(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
