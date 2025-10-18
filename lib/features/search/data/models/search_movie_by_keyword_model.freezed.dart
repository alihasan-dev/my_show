// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_movie_by_keyword_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchMovieByKeywordModel {

 int? get id; int? get page; List<SearchMovieKeyword>? get results;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'total_results') int? get totalResults;
/// Create a copy of SearchMovieByKeywordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMovieByKeywordModelCopyWith<SearchMovieByKeywordModel> get copyWith => _$SearchMovieByKeywordModelCopyWithImpl<SearchMovieByKeywordModel>(this as SearchMovieByKeywordModel, _$identity);

  /// Serializes this SearchMovieByKeywordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMovieByKeywordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,page,const DeepCollectionEquality().hash(results),totalPages,totalResults);

@override
String toString() {
  return 'SearchMovieByKeywordModel(id: $id, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class $SearchMovieByKeywordModelCopyWith<$Res>  {
  factory $SearchMovieByKeywordModelCopyWith(SearchMovieByKeywordModel value, $Res Function(SearchMovieByKeywordModel) _then) = _$SearchMovieByKeywordModelCopyWithImpl;
@useResult
$Res call({
 int? id, int? page, List<SearchMovieKeyword>? results,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_results') int? totalResults
});




}
/// @nodoc
class _$SearchMovieByKeywordModelCopyWithImpl<$Res>
    implements $SearchMovieByKeywordModelCopyWith<$Res> {
  _$SearchMovieByKeywordModelCopyWithImpl(this._self, this._then);

  final SearchMovieByKeywordModel _self;
  final $Res Function(SearchMovieByKeywordModel) _then;

/// Create a copy of SearchMovieByKeywordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? page = freezed,Object? results = freezed,Object? totalPages = freezed,Object? totalResults = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<SearchMovieKeyword>?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchMovieByKeywordModel].
extension SearchMovieByKeywordModelPatterns on SearchMovieByKeywordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchMovieByKeywordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchMovieByKeywordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchMovieByKeywordModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchMovieByKeywordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchMovieByKeywordModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchMovieByKeywordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? page,  List<SearchMovieKeyword>? results, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchMovieByKeywordModel() when $default != null:
return $default(_that.id,_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? page,  List<SearchMovieKeyword>? results, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults)  $default,) {final _that = this;
switch (_that) {
case _SearchMovieByKeywordModel():
return $default(_that.id,_that.page,_that.results,_that.totalPages,_that.totalResults);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? page,  List<SearchMovieKeyword>? results, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults)?  $default,) {final _that = this;
switch (_that) {
case _SearchMovieByKeywordModel() when $default != null:
return $default(_that.id,_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchMovieByKeywordModel implements SearchMovieByKeywordModel {
  const _SearchMovieByKeywordModel({this.id, this.page, final  List<SearchMovieKeyword>? results, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'total_results') this.totalResults}): _results = results;
  factory _SearchMovieByKeywordModel.fromJson(Map<String, dynamic> json) => _$SearchMovieByKeywordModelFromJson(json);

@override final  int? id;
@override final  int? page;
 final  List<SearchMovieKeyword>? _results;
@override List<SearchMovieKeyword>? get results {
  final value = _results;
  if (value == null) return null;
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'total_results') final  int? totalResults;

/// Create a copy of SearchMovieByKeywordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchMovieByKeywordModelCopyWith<_SearchMovieByKeywordModel> get copyWith => __$SearchMovieByKeywordModelCopyWithImpl<_SearchMovieByKeywordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchMovieByKeywordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchMovieByKeywordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,page,const DeepCollectionEquality().hash(_results),totalPages,totalResults);

@override
String toString() {
  return 'SearchMovieByKeywordModel(id: $id, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class _$SearchMovieByKeywordModelCopyWith<$Res> implements $SearchMovieByKeywordModelCopyWith<$Res> {
  factory _$SearchMovieByKeywordModelCopyWith(_SearchMovieByKeywordModel value, $Res Function(_SearchMovieByKeywordModel) _then) = __$SearchMovieByKeywordModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? page, List<SearchMovieKeyword>? results,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_results') int? totalResults
});




}
/// @nodoc
class __$SearchMovieByKeywordModelCopyWithImpl<$Res>
    implements _$SearchMovieByKeywordModelCopyWith<$Res> {
  __$SearchMovieByKeywordModelCopyWithImpl(this._self, this._then);

  final _SearchMovieByKeywordModel _self;
  final $Res Function(_SearchMovieByKeywordModel) _then;

/// Create a copy of SearchMovieByKeywordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? page = freezed,Object? results = freezed,Object? totalPages = freezed,Object? totalResults = freezed,}) {
  return _then(_SearchMovieByKeywordModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<SearchMovieKeyword>?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$SearchMovieKeyword {

 bool? get adult;@JsonKey(name: 'backdrop_path') String? get backdropPath;@JsonKey(name: 'genre_ids') List<int>? get genreIds; int? get id;@JsonKey(name: "origin_country") List<String>? get originCountry;@JsonKey(name: 'original_name') String? get originalName;@JsonKey(name: 'original_title') String? get originalTitle; String? get overview; String? get title; String? get name;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'original_language') String? get originalLanguage; double? get popularity;@JsonKey(name: 'first_air_date') String? get firstAirDate;@JsonKey(name: 'release_date') String? get releaseDate; bool? get video;@JsonKey(name: 'vote_average') double? get voteAverage;@JsonKey(name: 'vote_count') int? get voteCount;
/// Create a copy of SearchMovieKeyword
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMovieKeywordCopyWith<SearchMovieKeyword> get copyWith => _$SearchMovieKeywordCopyWithImpl<SearchMovieKeyword>(this as SearchMovieKeyword, _$identity);

  /// Serializes this SearchMovieKeyword to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMovieKeyword&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other.genreIds, genreIds)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.originCountry, originCountry)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.title, title) || other.title == title)&&(identical(other.name, name) || other.name == name)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.firstAirDate, firstAirDate) || other.firstAirDate == firstAirDate)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(genreIds),id,const DeepCollectionEquality().hash(originCountry),originalName,originalTitle,overview,title,name,posterPath,originalLanguage,popularity,firstAirDate,releaseDate,video,voteAverage,voteCount);

@override
String toString() {
  return 'SearchMovieKeyword(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originCountry: $originCountry, originalName: $originalName, originalTitle: $originalTitle, overview: $overview, title: $title, name: $name, posterPath: $posterPath, originalLanguage: $originalLanguage, popularity: $popularity, firstAirDate: $firstAirDate, releaseDate: $releaseDate, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class $SearchMovieKeywordCopyWith<$Res>  {
  factory $SearchMovieKeywordCopyWith(SearchMovieKeyword value, $Res Function(SearchMovieKeyword) _then) = _$SearchMovieKeywordCopyWithImpl;
@useResult
$Res call({
 bool? adult,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'genre_ids') List<int>? genreIds, int? id,@JsonKey(name: "origin_country") List<String>? originCountry,@JsonKey(name: 'original_name') String? originalName,@JsonKey(name: 'original_title') String? originalTitle, String? overview, String? title, String? name,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'original_language') String? originalLanguage, double? popularity,@JsonKey(name: 'first_air_date') String? firstAirDate,@JsonKey(name: 'release_date') String? releaseDate, bool? video,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount
});




}
/// @nodoc
class _$SearchMovieKeywordCopyWithImpl<$Res>
    implements $SearchMovieKeywordCopyWith<$Res> {
  _$SearchMovieKeywordCopyWithImpl(this._self, this._then);

  final SearchMovieKeyword _self;
  final $Res Function(SearchMovieKeyword) _then;

/// Create a copy of SearchMovieKeyword
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = freezed,Object? backdropPath = freezed,Object? genreIds = freezed,Object? id = freezed,Object? originCountry = freezed,Object? originalName = freezed,Object? originalTitle = freezed,Object? overview = freezed,Object? title = freezed,Object? name = freezed,Object? posterPath = freezed,Object? originalLanguage = freezed,Object? popularity = freezed,Object? firstAirDate = freezed,Object? releaseDate = freezed,Object? video = freezed,Object? voteAverage = freezed,Object? voteCount = freezed,}) {
  return _then(_self.copyWith(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,genreIds: freezed == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,originCountry: freezed == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as List<String>?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchMovieKeyword].
extension SearchMovieKeywordPatterns on SearchMovieKeyword {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchMovieKeyword value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchMovieKeyword() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchMovieKeyword value)  $default,){
final _that = this;
switch (_that) {
case _SearchMovieKeyword():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchMovieKeyword value)?  $default,){
final _that = this;
switch (_that) {
case _SearchMovieKeyword() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? adult, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'genre_ids')  List<int>? genreIds,  int? id, @JsonKey(name: "origin_country")  List<String>? originCountry, @JsonKey(name: 'original_name')  String? originalName, @JsonKey(name: 'original_title')  String? originalTitle,  String? overview,  String? title,  String? name, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'original_language')  String? originalLanguage,  double? popularity, @JsonKey(name: 'first_air_date')  String? firstAirDate, @JsonKey(name: 'release_date')  String? releaseDate,  bool? video, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchMovieKeyword() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.id,_that.originCountry,_that.originalName,_that.originalTitle,_that.overview,_that.title,_that.name,_that.posterPath,_that.originalLanguage,_that.popularity,_that.firstAirDate,_that.releaseDate,_that.video,_that.voteAverage,_that.voteCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? adult, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'genre_ids')  List<int>? genreIds,  int? id, @JsonKey(name: "origin_country")  List<String>? originCountry, @JsonKey(name: 'original_name')  String? originalName, @JsonKey(name: 'original_title')  String? originalTitle,  String? overview,  String? title,  String? name, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'original_language')  String? originalLanguage,  double? popularity, @JsonKey(name: 'first_air_date')  String? firstAirDate, @JsonKey(name: 'release_date')  String? releaseDate,  bool? video, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount)  $default,) {final _that = this;
switch (_that) {
case _SearchMovieKeyword():
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.id,_that.originCountry,_that.originalName,_that.originalTitle,_that.overview,_that.title,_that.name,_that.posterPath,_that.originalLanguage,_that.popularity,_that.firstAirDate,_that.releaseDate,_that.video,_that.voteAverage,_that.voteCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? adult, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'genre_ids')  List<int>? genreIds,  int? id, @JsonKey(name: "origin_country")  List<String>? originCountry, @JsonKey(name: 'original_name')  String? originalName, @JsonKey(name: 'original_title')  String? originalTitle,  String? overview,  String? title,  String? name, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'original_language')  String? originalLanguage,  double? popularity, @JsonKey(name: 'first_air_date')  String? firstAirDate, @JsonKey(name: 'release_date')  String? releaseDate,  bool? video, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount)?  $default,) {final _that = this;
switch (_that) {
case _SearchMovieKeyword() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.id,_that.originCountry,_that.originalName,_that.originalTitle,_that.overview,_that.title,_that.name,_that.posterPath,_that.originalLanguage,_that.popularity,_that.firstAirDate,_that.releaseDate,_that.video,_that.voteAverage,_that.voteCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchMovieKeyword implements SearchMovieKeyword {
  const _SearchMovieKeyword({this.adult, @JsonKey(name: 'backdrop_path') this.backdropPath, @JsonKey(name: 'genre_ids') final  List<int>? genreIds, this.id, @JsonKey(name: "origin_country") final  List<String>? originCountry, @JsonKey(name: 'original_name') this.originalName, @JsonKey(name: 'original_title') this.originalTitle, this.overview, this.title, this.name, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'original_language') this.originalLanguage, this.popularity, @JsonKey(name: 'first_air_date') this.firstAirDate, @JsonKey(name: 'release_date') this.releaseDate, this.video, @JsonKey(name: 'vote_average') this.voteAverage, @JsonKey(name: 'vote_count') this.voteCount}): _genreIds = genreIds,_originCountry = originCountry;
  factory _SearchMovieKeyword.fromJson(Map<String, dynamic> json) => _$SearchMovieKeywordFromJson(json);

@override final  bool? adult;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
 final  List<int>? _genreIds;
@override@JsonKey(name: 'genre_ids') List<int>? get genreIds {
  final value = _genreIds;
  if (value == null) return null;
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? id;
 final  List<String>? _originCountry;
@override@JsonKey(name: "origin_country") List<String>? get originCountry {
  final value = _originCountry;
  if (value == null) return null;
  if (_originCountry is EqualUnmodifiableListView) return _originCountry;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'original_name') final  String? originalName;
@override@JsonKey(name: 'original_title') final  String? originalTitle;
@override final  String? overview;
@override final  String? title;
@override final  String? name;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'original_language') final  String? originalLanguage;
@override final  double? popularity;
@override@JsonKey(name: 'first_air_date') final  String? firstAirDate;
@override@JsonKey(name: 'release_date') final  String? releaseDate;
@override final  bool? video;
@override@JsonKey(name: 'vote_average') final  double? voteAverage;
@override@JsonKey(name: 'vote_count') final  int? voteCount;

/// Create a copy of SearchMovieKeyword
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchMovieKeywordCopyWith<_SearchMovieKeyword> get copyWith => __$SearchMovieKeywordCopyWithImpl<_SearchMovieKeyword>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchMovieKeywordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchMovieKeyword&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._originCountry, _originCountry)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.title, title) || other.title == title)&&(identical(other.name, name) || other.name == name)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.firstAirDate, firstAirDate) || other.firstAirDate == firstAirDate)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(_genreIds),id,const DeepCollectionEquality().hash(_originCountry),originalName,originalTitle,overview,title,name,posterPath,originalLanguage,popularity,firstAirDate,releaseDate,video,voteAverage,voteCount);

@override
String toString() {
  return 'SearchMovieKeyword(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originCountry: $originCountry, originalName: $originalName, originalTitle: $originalTitle, overview: $overview, title: $title, name: $name, posterPath: $posterPath, originalLanguage: $originalLanguage, popularity: $popularity, firstAirDate: $firstAirDate, releaseDate: $releaseDate, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class _$SearchMovieKeywordCopyWith<$Res> implements $SearchMovieKeywordCopyWith<$Res> {
  factory _$SearchMovieKeywordCopyWith(_SearchMovieKeyword value, $Res Function(_SearchMovieKeyword) _then) = __$SearchMovieKeywordCopyWithImpl;
@override @useResult
$Res call({
 bool? adult,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'genre_ids') List<int>? genreIds, int? id,@JsonKey(name: "origin_country") List<String>? originCountry,@JsonKey(name: 'original_name') String? originalName,@JsonKey(name: 'original_title') String? originalTitle, String? overview, String? title, String? name,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'original_language') String? originalLanguage, double? popularity,@JsonKey(name: 'first_air_date') String? firstAirDate,@JsonKey(name: 'release_date') String? releaseDate, bool? video,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount
});




}
/// @nodoc
class __$SearchMovieKeywordCopyWithImpl<$Res>
    implements _$SearchMovieKeywordCopyWith<$Res> {
  __$SearchMovieKeywordCopyWithImpl(this._self, this._then);

  final _SearchMovieKeyword _self;
  final $Res Function(_SearchMovieKeyword) _then;

/// Create a copy of SearchMovieKeyword
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = freezed,Object? backdropPath = freezed,Object? genreIds = freezed,Object? id = freezed,Object? originCountry = freezed,Object? originalName = freezed,Object? originalTitle = freezed,Object? overview = freezed,Object? title = freezed,Object? name = freezed,Object? posterPath = freezed,Object? originalLanguage = freezed,Object? popularity = freezed,Object? firstAirDate = freezed,Object? releaseDate = freezed,Object? video = freezed,Object? voteAverage = freezed,Object? voteCount = freezed,}) {
  return _then(_SearchMovieKeyword(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,genreIds: freezed == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,originCountry: freezed == originCountry ? _self._originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as List<String>?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
