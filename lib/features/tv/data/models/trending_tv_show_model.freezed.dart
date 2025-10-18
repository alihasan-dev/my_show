// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_tv_show_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrendingTVShowModel {

 int? get page; List<TvShow>? get results;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'total_results') int? get totalResults;
/// Create a copy of TrendingTVShowModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrendingTVShowModelCopyWith<TrendingTVShowModel> get copyWith => _$TrendingTVShowModelCopyWithImpl<TrendingTVShowModel>(this as TrendingTVShowModel, _$identity);

  /// Serializes this TrendingTVShowModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrendingTVShowModel&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(results),totalPages,totalResults);

@override
String toString() {
  return 'TrendingTVShowModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class $TrendingTVShowModelCopyWith<$Res>  {
  factory $TrendingTVShowModelCopyWith(TrendingTVShowModel value, $Res Function(TrendingTVShowModel) _then) = _$TrendingTVShowModelCopyWithImpl;
@useResult
$Res call({
 int? page, List<TvShow>? results,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_results') int? totalResults
});




}
/// @nodoc
class _$TrendingTVShowModelCopyWithImpl<$Res>
    implements $TrendingTVShowModelCopyWith<$Res> {
  _$TrendingTVShowModelCopyWithImpl(this._self, this._then);

  final TrendingTVShowModel _self;
  final $Res Function(TrendingTVShowModel) _then;

/// Create a copy of TrendingTVShowModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? results = freezed,Object? totalPages = freezed,Object? totalResults = freezed,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<TvShow>?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [TrendingTVShowModel].
extension TrendingTVShowModelPatterns on TrendingTVShowModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrendingTVShowModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrendingTVShowModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrendingTVShowModel value)  $default,){
final _that = this;
switch (_that) {
case _TrendingTVShowModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrendingTVShowModel value)?  $default,){
final _that = this;
switch (_that) {
case _TrendingTVShowModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? page,  List<TvShow>? results, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrendingTVShowModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? page,  List<TvShow>? results, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults)  $default,) {final _that = this;
switch (_that) {
case _TrendingTVShowModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? page,  List<TvShow>? results, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults)?  $default,) {final _that = this;
switch (_that) {
case _TrendingTVShowModel() when $default != null:
return $default(_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrendingTVShowModel implements TrendingTVShowModel {
   _TrendingTVShowModel({this.page, final  List<TvShow>? results, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'total_results') this.totalResults}): _results = results;
  factory _TrendingTVShowModel.fromJson(Map<String, dynamic> json) => _$TrendingTVShowModelFromJson(json);

@override final  int? page;
 final  List<TvShow>? _results;
@override List<TvShow>? get results {
  final value = _results;
  if (value == null) return null;
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'total_results') final  int? totalResults;

/// Create a copy of TrendingTVShowModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrendingTVShowModelCopyWith<_TrendingTVShowModel> get copyWith => __$TrendingTVShowModelCopyWithImpl<_TrendingTVShowModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrendingTVShowModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrendingTVShowModel&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(_results),totalPages,totalResults);

@override
String toString() {
  return 'TrendingTVShowModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class _$TrendingTVShowModelCopyWith<$Res> implements $TrendingTVShowModelCopyWith<$Res> {
  factory _$TrendingTVShowModelCopyWith(_TrendingTVShowModel value, $Res Function(_TrendingTVShowModel) _then) = __$TrendingTVShowModelCopyWithImpl;
@override @useResult
$Res call({
 int? page, List<TvShow>? results,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_results') int? totalResults
});




}
/// @nodoc
class __$TrendingTVShowModelCopyWithImpl<$Res>
    implements _$TrendingTVShowModelCopyWith<$Res> {
  __$TrendingTVShowModelCopyWithImpl(this._self, this._then);

  final _TrendingTVShowModel _self;
  final $Res Function(_TrendingTVShowModel) _then;

/// Create a copy of TrendingTVShowModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? results = freezed,Object? totalPages = freezed,Object? totalResults = freezed,}) {
  return _then(_TrendingTVShowModel(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<TvShow>?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$TvShow {

 bool? get adult;@JsonKey(name: 'backdrop_path') String? get backdropPath; int? get id; String? get name;@JsonKey(name: 'original_name') String? get originalTitle; String? get overview;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'media_type') String? get mediaType;@JsonKey(name: 'original_language') String? get originalLanguage;@JsonKey(name: 'genre_ids') List<int>? get genreIds; double? get popularity;@JsonKey(name: 'first_air_date') String? get firstAirDate;@JsonKey(name: 'vote_average') double? get voteAverage;@JsonKey(name: 'vote_count') int? get voteCount;@JsonKey(name: 'origin_country') List<String>? get originCountry;
/// Create a copy of TvShow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvShowCopyWith<TvShow> get copyWith => _$TvShowCopyWithImpl<TvShow>(this as TvShow, _$identity);

  /// Serializes this TvShow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvShow&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&const DeepCollectionEquality().equals(other.genreIds, genreIds)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.firstAirDate, firstAirDate) || other.firstAirDate == firstAirDate)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&const DeepCollectionEquality().equals(other.originCountry, originCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,id,name,originalTitle,overview,posterPath,mediaType,originalLanguage,const DeepCollectionEquality().hash(genreIds),popularity,firstAirDate,voteAverage,voteCount,const DeepCollectionEquality().hash(originCountry));

@override
String toString() {
  return 'TvShow(adult: $adult, backdropPath: $backdropPath, id: $id, name: $name, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, mediaType: $mediaType, originalLanguage: $originalLanguage, genreIds: $genreIds, popularity: $popularity, firstAirDate: $firstAirDate, voteAverage: $voteAverage, voteCount: $voteCount, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class $TvShowCopyWith<$Res>  {
  factory $TvShowCopyWith(TvShow value, $Res Function(TvShow) _then) = _$TvShowCopyWithImpl;
@useResult
$Res call({
 bool? adult,@JsonKey(name: 'backdrop_path') String? backdropPath, int? id, String? name,@JsonKey(name: 'original_name') String? originalTitle, String? overview,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'media_type') String? mediaType,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'genre_ids') List<int>? genreIds, double? popularity,@JsonKey(name: 'first_air_date') String? firstAirDate,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount,@JsonKey(name: 'origin_country') List<String>? originCountry
});




}
/// @nodoc
class _$TvShowCopyWithImpl<$Res>
    implements $TvShowCopyWith<$Res> {
  _$TvShowCopyWithImpl(this._self, this._then);

  final TvShow _self;
  final $Res Function(TvShow) _then;

/// Create a copy of TvShow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = freezed,Object? backdropPath = freezed,Object? id = freezed,Object? name = freezed,Object? originalTitle = freezed,Object? overview = freezed,Object? posterPath = freezed,Object? mediaType = freezed,Object? originalLanguage = freezed,Object? genreIds = freezed,Object? popularity = freezed,Object? firstAirDate = freezed,Object? voteAverage = freezed,Object? voteCount = freezed,Object? originCountry = freezed,}) {
  return _then(_self.copyWith(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,mediaType: freezed == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,genreIds: freezed == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,originCountry: freezed == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TvShow].
extension TvShowPatterns on TvShow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TvShow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TvShow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TvShow value)  $default,){
final _that = this;
switch (_that) {
case _TvShow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TvShow value)?  $default,){
final _that = this;
switch (_that) {
case _TvShow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? adult, @JsonKey(name: 'backdrop_path')  String? backdropPath,  int? id,  String? name, @JsonKey(name: 'original_name')  String? originalTitle,  String? overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'media_type')  String? mediaType, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'genre_ids')  List<int>? genreIds,  double? popularity, @JsonKey(name: 'first_air_date')  String? firstAirDate, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount, @JsonKey(name: 'origin_country')  List<String>? originCountry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TvShow() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.id,_that.name,_that.originalTitle,_that.overview,_that.posterPath,_that.mediaType,_that.originalLanguage,_that.genreIds,_that.popularity,_that.firstAirDate,_that.voteAverage,_that.voteCount,_that.originCountry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? adult, @JsonKey(name: 'backdrop_path')  String? backdropPath,  int? id,  String? name, @JsonKey(name: 'original_name')  String? originalTitle,  String? overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'media_type')  String? mediaType, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'genre_ids')  List<int>? genreIds,  double? popularity, @JsonKey(name: 'first_air_date')  String? firstAirDate, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount, @JsonKey(name: 'origin_country')  List<String>? originCountry)  $default,) {final _that = this;
switch (_that) {
case _TvShow():
return $default(_that.adult,_that.backdropPath,_that.id,_that.name,_that.originalTitle,_that.overview,_that.posterPath,_that.mediaType,_that.originalLanguage,_that.genreIds,_that.popularity,_that.firstAirDate,_that.voteAverage,_that.voteCount,_that.originCountry);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? adult, @JsonKey(name: 'backdrop_path')  String? backdropPath,  int? id,  String? name, @JsonKey(name: 'original_name')  String? originalTitle,  String? overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'media_type')  String? mediaType, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'genre_ids')  List<int>? genreIds,  double? popularity, @JsonKey(name: 'first_air_date')  String? firstAirDate, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount, @JsonKey(name: 'origin_country')  List<String>? originCountry)?  $default,) {final _that = this;
switch (_that) {
case _TvShow() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.id,_that.name,_that.originalTitle,_that.overview,_that.posterPath,_that.mediaType,_that.originalLanguage,_that.genreIds,_that.popularity,_that.firstAirDate,_that.voteAverage,_that.voteCount,_that.originCountry);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TvShow implements TvShow {
   _TvShow({this.adult, @JsonKey(name: 'backdrop_path') this.backdropPath, this.id, this.name, @JsonKey(name: 'original_name') this.originalTitle, this.overview, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'media_type') this.mediaType, @JsonKey(name: 'original_language') this.originalLanguage, @JsonKey(name: 'genre_ids') final  List<int>? genreIds, this.popularity, @JsonKey(name: 'first_air_date') this.firstAirDate, @JsonKey(name: 'vote_average') this.voteAverage, @JsonKey(name: 'vote_count') this.voteCount, @JsonKey(name: 'origin_country') final  List<String>? originCountry}): _genreIds = genreIds,_originCountry = originCountry;
  factory _TvShow.fromJson(Map<String, dynamic> json) => _$TvShowFromJson(json);

@override final  bool? adult;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'original_name') final  String? originalTitle;
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
@override@JsonKey(name: 'first_air_date') final  String? firstAirDate;
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


/// Create a copy of TvShow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TvShowCopyWith<_TvShow> get copyWith => __$TvShowCopyWithImpl<_TvShow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TvShowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TvShow&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.firstAirDate, firstAirDate) || other.firstAirDate == firstAirDate)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&const DeepCollectionEquality().equals(other._originCountry, _originCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,id,name,originalTitle,overview,posterPath,mediaType,originalLanguage,const DeepCollectionEquality().hash(_genreIds),popularity,firstAirDate,voteAverage,voteCount,const DeepCollectionEquality().hash(_originCountry));

@override
String toString() {
  return 'TvShow(adult: $adult, backdropPath: $backdropPath, id: $id, name: $name, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, mediaType: $mediaType, originalLanguage: $originalLanguage, genreIds: $genreIds, popularity: $popularity, firstAirDate: $firstAirDate, voteAverage: $voteAverage, voteCount: $voteCount, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class _$TvShowCopyWith<$Res> implements $TvShowCopyWith<$Res> {
  factory _$TvShowCopyWith(_TvShow value, $Res Function(_TvShow) _then) = __$TvShowCopyWithImpl;
@override @useResult
$Res call({
 bool? adult,@JsonKey(name: 'backdrop_path') String? backdropPath, int? id, String? name,@JsonKey(name: 'original_name') String? originalTitle, String? overview,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'media_type') String? mediaType,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'genre_ids') List<int>? genreIds, double? popularity,@JsonKey(name: 'first_air_date') String? firstAirDate,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount,@JsonKey(name: 'origin_country') List<String>? originCountry
});




}
/// @nodoc
class __$TvShowCopyWithImpl<$Res>
    implements _$TvShowCopyWith<$Res> {
  __$TvShowCopyWithImpl(this._self, this._then);

  final _TvShow _self;
  final $Res Function(_TvShow) _then;

/// Create a copy of TvShow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = freezed,Object? backdropPath = freezed,Object? id = freezed,Object? name = freezed,Object? originalTitle = freezed,Object? overview = freezed,Object? posterPath = freezed,Object? mediaType = freezed,Object? originalLanguage = freezed,Object? genreIds = freezed,Object? popularity = freezed,Object? firstAirDate = freezed,Object? voteAverage = freezed,Object? voteCount = freezed,Object? originCountry = freezed,}) {
  return _then(_TvShow(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,mediaType: freezed == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,genreIds: freezed == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,originCountry: freezed == originCountry ? _self._originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
