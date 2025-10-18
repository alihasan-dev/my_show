// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrendingMoviesResponse {

 int? get page; List<MovieResult>? get results;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'total_results') int? get totalResults;
/// Create a copy of TrendingMoviesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrendingMoviesResponseCopyWith<TrendingMoviesResponse> get copyWith => _$TrendingMoviesResponseCopyWithImpl<TrendingMoviesResponse>(this as TrendingMoviesResponse, _$identity);

  /// Serializes this TrendingMoviesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrendingMoviesResponse&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(results),totalPages,totalResults);

@override
String toString() {
  return 'TrendingMoviesResponse(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class $TrendingMoviesResponseCopyWith<$Res>  {
  factory $TrendingMoviesResponseCopyWith(TrendingMoviesResponse value, $Res Function(TrendingMoviesResponse) _then) = _$TrendingMoviesResponseCopyWithImpl;
@useResult
$Res call({
 int? page, List<MovieResult>? results,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_results') int? totalResults
});




}
/// @nodoc
class _$TrendingMoviesResponseCopyWithImpl<$Res>
    implements $TrendingMoviesResponseCopyWith<$Res> {
  _$TrendingMoviesResponseCopyWithImpl(this._self, this._then);

  final TrendingMoviesResponse _self;
  final $Res Function(TrendingMoviesResponse) _then;

/// Create a copy of TrendingMoviesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? results = freezed,Object? totalPages = freezed,Object? totalResults = freezed,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<MovieResult>?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [TrendingMoviesResponse].
extension TrendingMoviesResponsePatterns on TrendingMoviesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrendingMoviesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrendingMoviesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrendingMoviesResponse value)  $default,){
final _that = this;
switch (_that) {
case _TrendingMoviesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrendingMoviesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TrendingMoviesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? page,  List<MovieResult>? results, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrendingMoviesResponse() when $default != null:
return $default(_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? page,  List<MovieResult>? results, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults)  $default,) {final _that = this;
switch (_that) {
case _TrendingMoviesResponse():
return $default(_that.page,_that.results,_that.totalPages,_that.totalResults);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? page,  List<MovieResult>? results, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults)?  $default,) {final _that = this;
switch (_that) {
case _TrendingMoviesResponse() when $default != null:
return $default(_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrendingMoviesResponse implements TrendingMoviesResponse {
   _TrendingMoviesResponse({this.page, final  List<MovieResult>? results, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'total_results') this.totalResults}): _results = results;
  factory _TrendingMoviesResponse.fromJson(Map<String, dynamic> json) => _$TrendingMoviesResponseFromJson(json);

@override final  int? page;
 final  List<MovieResult>? _results;
@override List<MovieResult>? get results {
  final value = _results;
  if (value == null) return null;
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'total_results') final  int? totalResults;

/// Create a copy of TrendingMoviesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrendingMoviesResponseCopyWith<_TrendingMoviesResponse> get copyWith => __$TrendingMoviesResponseCopyWithImpl<_TrendingMoviesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrendingMoviesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrendingMoviesResponse&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(_results),totalPages,totalResults);

@override
String toString() {
  return 'TrendingMoviesResponse(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class _$TrendingMoviesResponseCopyWith<$Res> implements $TrendingMoviesResponseCopyWith<$Res> {
  factory _$TrendingMoviesResponseCopyWith(_TrendingMoviesResponse value, $Res Function(_TrendingMoviesResponse) _then) = __$TrendingMoviesResponseCopyWithImpl;
@override @useResult
$Res call({
 int? page, List<MovieResult>? results,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_results') int? totalResults
});




}
/// @nodoc
class __$TrendingMoviesResponseCopyWithImpl<$Res>
    implements _$TrendingMoviesResponseCopyWith<$Res> {
  __$TrendingMoviesResponseCopyWithImpl(this._self, this._then);

  final _TrendingMoviesResponse _self;
  final $Res Function(_TrendingMoviesResponse) _then;

/// Create a copy of TrendingMoviesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? results = freezed,Object? totalPages = freezed,Object? totalResults = freezed,}) {
  return _then(_TrendingMoviesResponse(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<MovieResult>?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$MovieResult {

 bool? get adult;@JsonKey(name: 'backdrop_path') String? get backdropPath; int? get id; String? get title;@JsonKey(name: 'original_title') String? get originalTitle; String? get name;@JsonKey(name: 'original_name') String? get originalName; String? get overview;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'media_type') String? get mediaType;@JsonKey(name: 'original_language') String? get originalLanguage;@JsonKey(name: 'genre_ids') List<int>? get genreIds; double? get popularity;@JsonKey(name: 'release_date') String? get releaseDate;@JsonKey(name: 'first_air_date') String? get firstAirDate; bool? get video;@JsonKey(name: 'vote_average') double? get voteAverage;@JsonKey(name: 'vote_count') int? get voteCount;@JsonKey(name: 'origin_country') List<String>? get originCountry;
/// Create a copy of MovieResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieResultCopyWith<MovieResult> get copyWith => _$MovieResultCopyWithImpl<MovieResult>(this as MovieResult, _$identity);

  /// Serializes this MovieResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieResult&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&const DeepCollectionEquality().equals(other.genreIds, genreIds)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.firstAirDate, firstAirDate) || other.firstAirDate == firstAirDate)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&const DeepCollectionEquality().equals(other.originCountry, originCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,adult,backdropPath,id,title,originalTitle,name,originalName,overview,posterPath,mediaType,originalLanguage,const DeepCollectionEquality().hash(genreIds),popularity,releaseDate,firstAirDate,video,voteAverage,voteCount,const DeepCollectionEquality().hash(originCountry)]);

@override
String toString() {
  return 'MovieResult(adult: $adult, backdropPath: $backdropPath, id: $id, title: $title, originalTitle: $originalTitle, name: $name, originalName: $originalName, overview: $overview, posterPath: $posterPath, mediaType: $mediaType, originalLanguage: $originalLanguage, genreIds: $genreIds, popularity: $popularity, releaseDate: $releaseDate, firstAirDate: $firstAirDate, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class $MovieResultCopyWith<$Res>  {
  factory $MovieResultCopyWith(MovieResult value, $Res Function(MovieResult) _then) = _$MovieResultCopyWithImpl;
@useResult
$Res call({
 bool? adult,@JsonKey(name: 'backdrop_path') String? backdropPath, int? id, String? title,@JsonKey(name: 'original_title') String? originalTitle, String? name,@JsonKey(name: 'original_name') String? originalName, String? overview,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'media_type') String? mediaType,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'genre_ids') List<int>? genreIds, double? popularity,@JsonKey(name: 'release_date') String? releaseDate,@JsonKey(name: 'first_air_date') String? firstAirDate, bool? video,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount,@JsonKey(name: 'origin_country') List<String>? originCountry
});




}
/// @nodoc
class _$MovieResultCopyWithImpl<$Res>
    implements $MovieResultCopyWith<$Res> {
  _$MovieResultCopyWithImpl(this._self, this._then);

  final MovieResult _self;
  final $Res Function(MovieResult) _then;

/// Create a copy of MovieResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = freezed,Object? backdropPath = freezed,Object? id = freezed,Object? title = freezed,Object? originalTitle = freezed,Object? name = freezed,Object? originalName = freezed,Object? overview = freezed,Object? posterPath = freezed,Object? mediaType = freezed,Object? originalLanguage = freezed,Object? genreIds = freezed,Object? popularity = freezed,Object? releaseDate = freezed,Object? firstAirDate = freezed,Object? video = freezed,Object? voteAverage = freezed,Object? voteCount = freezed,Object? originCountry = freezed,}) {
  return _then(_self.copyWith(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,mediaType: freezed == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,genreIds: freezed == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,originCountry: freezed == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieResult].
extension MovieResultPatterns on MovieResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieResult value)  $default,){
final _that = this;
switch (_that) {
case _MovieResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieResult value)?  $default,){
final _that = this;
switch (_that) {
case _MovieResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? adult, @JsonKey(name: 'backdrop_path')  String? backdropPath,  int? id,  String? title, @JsonKey(name: 'original_title')  String? originalTitle,  String? name, @JsonKey(name: 'original_name')  String? originalName,  String? overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'media_type')  String? mediaType, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'genre_ids')  List<int>? genreIds,  double? popularity, @JsonKey(name: 'release_date')  String? releaseDate, @JsonKey(name: 'first_air_date')  String? firstAirDate,  bool? video, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount, @JsonKey(name: 'origin_country')  List<String>? originCountry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieResult() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.id,_that.title,_that.originalTitle,_that.name,_that.originalName,_that.overview,_that.posterPath,_that.mediaType,_that.originalLanguage,_that.genreIds,_that.popularity,_that.releaseDate,_that.firstAirDate,_that.video,_that.voteAverage,_that.voteCount,_that.originCountry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? adult, @JsonKey(name: 'backdrop_path')  String? backdropPath,  int? id,  String? title, @JsonKey(name: 'original_title')  String? originalTitle,  String? name, @JsonKey(name: 'original_name')  String? originalName,  String? overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'media_type')  String? mediaType, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'genre_ids')  List<int>? genreIds,  double? popularity, @JsonKey(name: 'release_date')  String? releaseDate, @JsonKey(name: 'first_air_date')  String? firstAirDate,  bool? video, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount, @JsonKey(name: 'origin_country')  List<String>? originCountry)  $default,) {final _that = this;
switch (_that) {
case _MovieResult():
return $default(_that.adult,_that.backdropPath,_that.id,_that.title,_that.originalTitle,_that.name,_that.originalName,_that.overview,_that.posterPath,_that.mediaType,_that.originalLanguage,_that.genreIds,_that.popularity,_that.releaseDate,_that.firstAirDate,_that.video,_that.voteAverage,_that.voteCount,_that.originCountry);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? adult, @JsonKey(name: 'backdrop_path')  String? backdropPath,  int? id,  String? title, @JsonKey(name: 'original_title')  String? originalTitle,  String? name, @JsonKey(name: 'original_name')  String? originalName,  String? overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'media_type')  String? mediaType, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'genre_ids')  List<int>? genreIds,  double? popularity, @JsonKey(name: 'release_date')  String? releaseDate, @JsonKey(name: 'first_air_date')  String? firstAirDate,  bool? video, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount, @JsonKey(name: 'origin_country')  List<String>? originCountry)?  $default,) {final _that = this;
switch (_that) {
case _MovieResult() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.id,_that.title,_that.originalTitle,_that.name,_that.originalName,_that.overview,_that.posterPath,_that.mediaType,_that.originalLanguage,_that.genreIds,_that.popularity,_that.releaseDate,_that.firstAirDate,_that.video,_that.voteAverage,_that.voteCount,_that.originCountry);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieResult implements MovieResult {
   _MovieResult({this.adult, @JsonKey(name: 'backdrop_path') this.backdropPath, this.id, this.title, @JsonKey(name: 'original_title') this.originalTitle, this.name, @JsonKey(name: 'original_name') this.originalName, this.overview, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'media_type') this.mediaType, @JsonKey(name: 'original_language') this.originalLanguage, @JsonKey(name: 'genre_ids') final  List<int>? genreIds, this.popularity, @JsonKey(name: 'release_date') this.releaseDate, @JsonKey(name: 'first_air_date') this.firstAirDate, this.video, @JsonKey(name: 'vote_average') this.voteAverage, @JsonKey(name: 'vote_count') this.voteCount, @JsonKey(name: 'origin_country') final  List<String>? originCountry}): _genreIds = genreIds,_originCountry = originCountry;
  factory _MovieResult.fromJson(Map<String, dynamic> json) => _$MovieResultFromJson(json);

@override final  bool? adult;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
@override final  int? id;
@override final  String? title;
@override@JsonKey(name: 'original_title') final  String? originalTitle;
@override final  String? name;
@override@JsonKey(name: 'original_name') final  String? originalName;
@override final  String? overview;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'media_type') final  String? mediaType;
@override@JsonKey(name: 'original_language') final  String? originalLanguage;
 final  List<int>? _genreIds;
@override@JsonKey(name: 'genre_ids') List<int>? get genreIds {
  final value = _genreIds;
  if (value == null) return null;
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double? popularity;
@override@JsonKey(name: 'release_date') final  String? releaseDate;
@override@JsonKey(name: 'first_air_date') final  String? firstAirDate;
@override final  bool? video;
@override@JsonKey(name: 'vote_average') final  double? voteAverage;
@override@JsonKey(name: 'vote_count') final  int? voteCount;
 final  List<String>? _originCountry;
@override@JsonKey(name: 'origin_country') List<String>? get originCountry {
  final value = _originCountry;
  if (value == null) return null;
  if (_originCountry is EqualUnmodifiableListView) return _originCountry;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MovieResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieResultCopyWith<_MovieResult> get copyWith => __$MovieResultCopyWithImpl<_MovieResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieResult&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.firstAirDate, firstAirDate) || other.firstAirDate == firstAirDate)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&const DeepCollectionEquality().equals(other._originCountry, _originCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,adult,backdropPath,id,title,originalTitle,name,originalName,overview,posterPath,mediaType,originalLanguage,const DeepCollectionEquality().hash(_genreIds),popularity,releaseDate,firstAirDate,video,voteAverage,voteCount,const DeepCollectionEquality().hash(_originCountry)]);

@override
String toString() {
  return 'MovieResult(adult: $adult, backdropPath: $backdropPath, id: $id, title: $title, originalTitle: $originalTitle, name: $name, originalName: $originalName, overview: $overview, posterPath: $posterPath, mediaType: $mediaType, originalLanguage: $originalLanguage, genreIds: $genreIds, popularity: $popularity, releaseDate: $releaseDate, firstAirDate: $firstAirDate, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class _$MovieResultCopyWith<$Res> implements $MovieResultCopyWith<$Res> {
  factory _$MovieResultCopyWith(_MovieResult value, $Res Function(_MovieResult) _then) = __$MovieResultCopyWithImpl;
@override @useResult
$Res call({
 bool? adult,@JsonKey(name: 'backdrop_path') String? backdropPath, int? id, String? title,@JsonKey(name: 'original_title') String? originalTitle, String? name,@JsonKey(name: 'original_name') String? originalName, String? overview,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'media_type') String? mediaType,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'genre_ids') List<int>? genreIds, double? popularity,@JsonKey(name: 'release_date') String? releaseDate,@JsonKey(name: 'first_air_date') String? firstAirDate, bool? video,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount,@JsonKey(name: 'origin_country') List<String>? originCountry
});




}
/// @nodoc
class __$MovieResultCopyWithImpl<$Res>
    implements _$MovieResultCopyWith<$Res> {
  __$MovieResultCopyWithImpl(this._self, this._then);

  final _MovieResult _self;
  final $Res Function(_MovieResult) _then;

/// Create a copy of MovieResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = freezed,Object? backdropPath = freezed,Object? id = freezed,Object? title = freezed,Object? originalTitle = freezed,Object? name = freezed,Object? originalName = freezed,Object? overview = freezed,Object? posterPath = freezed,Object? mediaType = freezed,Object? originalLanguage = freezed,Object? genreIds = freezed,Object? popularity = freezed,Object? releaseDate = freezed,Object? firstAirDate = freezed,Object? video = freezed,Object? voteAverage = freezed,Object? voteCount = freezed,Object? originCountry = freezed,}) {
  return _then(_MovieResult(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,mediaType: freezed == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,genreIds: freezed == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,originCountry: freezed == originCountry ? _self._originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
