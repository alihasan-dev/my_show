// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_credit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieCreditModel {

 int? get id; List<Cast>? get cast;
/// Create a copy of MovieCreditModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieCreditModelCopyWith<MovieCreditModel> get copyWith => _$MovieCreditModelCopyWithImpl<MovieCreditModel>(this as MovieCreditModel, _$identity);

  /// Serializes this MovieCreditModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieCreditModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.cast, cast));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(cast));

@override
String toString() {
  return 'MovieCreditModel(id: $id, cast: $cast)';
}


}

/// @nodoc
abstract mixin class $MovieCreditModelCopyWith<$Res>  {
  factory $MovieCreditModelCopyWith(MovieCreditModel value, $Res Function(MovieCreditModel) _then) = _$MovieCreditModelCopyWithImpl;
@useResult
$Res call({
 int? id, List<Cast>? cast
});




}
/// @nodoc
class _$MovieCreditModelCopyWithImpl<$Res>
    implements $MovieCreditModelCopyWith<$Res> {
  _$MovieCreditModelCopyWithImpl(this._self, this._then);

  final MovieCreditModel _self;
  final $Res Function(MovieCreditModel) _then;

/// Create a copy of MovieCreditModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? cast = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,cast: freezed == cast ? _self.cast : cast // ignore: cast_nullable_to_non_nullable
as List<Cast>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieCreditModel].
extension MovieCreditModelPatterns on MovieCreditModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieCreditModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieCreditModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieCreditModel value)  $default,){
final _that = this;
switch (_that) {
case _MovieCreditModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieCreditModel value)?  $default,){
final _that = this;
switch (_that) {
case _MovieCreditModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  List<Cast>? cast)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieCreditModel() when $default != null:
return $default(_that.id,_that.cast);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  List<Cast>? cast)  $default,) {final _that = this;
switch (_that) {
case _MovieCreditModel():
return $default(_that.id,_that.cast);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  List<Cast>? cast)?  $default,) {final _that = this;
switch (_that) {
case _MovieCreditModel() when $default != null:
return $default(_that.id,_that.cast);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieCreditModel implements MovieCreditModel {
  const _MovieCreditModel({this.id, final  List<Cast>? cast}): _cast = cast;
  factory _MovieCreditModel.fromJson(Map<String, dynamic> json) => _$MovieCreditModelFromJson(json);

@override final  int? id;
 final  List<Cast>? _cast;
@override List<Cast>? get cast {
  final value = _cast;
  if (value == null) return null;
  if (_cast is EqualUnmodifiableListView) return _cast;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MovieCreditModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieCreditModelCopyWith<_MovieCreditModel> get copyWith => __$MovieCreditModelCopyWithImpl<_MovieCreditModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieCreditModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieCreditModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._cast, _cast));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_cast));

@override
String toString() {
  return 'MovieCreditModel(id: $id, cast: $cast)';
}


}

/// @nodoc
abstract mixin class _$MovieCreditModelCopyWith<$Res> implements $MovieCreditModelCopyWith<$Res> {
  factory _$MovieCreditModelCopyWith(_MovieCreditModel value, $Res Function(_MovieCreditModel) _then) = __$MovieCreditModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, List<Cast>? cast
});




}
/// @nodoc
class __$MovieCreditModelCopyWithImpl<$Res>
    implements _$MovieCreditModelCopyWith<$Res> {
  __$MovieCreditModelCopyWithImpl(this._self, this._then);

  final _MovieCreditModel _self;
  final $Res Function(_MovieCreditModel) _then;

/// Create a copy of MovieCreditModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? cast = freezed,}) {
  return _then(_MovieCreditModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,cast: freezed == cast ? _self._cast : cast // ignore: cast_nullable_to_non_nullable
as List<Cast>?,
  ));
}


}


/// @nodoc
mixin _$Cast {

 bool? get adult;@JsonKey(name: 'backdrop_path') String? get backdropPath;@JsonKey(name: 'genre_ids') List<int>? get genreId; int? get id;@JsonKey(name: 'original_language') String? get originalLanguage;@JsonKey(name: 'original_title') String? get originalTitle; String? get overview; double? get popularity;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'release_date') String? get releaseDate; String? get title; bool? get video;@JsonKey(name: 'vote_average') double? get voteAverage;@JsonKey(name: 'vote_count') int? get voteCount; String? get character;@JsonKey(name: 'credit_id') String? get creditId; int? get order;
/// Create a copy of Cast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CastCopyWith<Cast> get copyWith => _$CastCopyWithImpl<Cast>(this as Cast, _$identity);

  /// Serializes this Cast to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cast&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other.genreId, genreId)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.character, character) || other.character == character)&&(identical(other.creditId, creditId) || other.creditId == creditId)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(genreId),id,originalLanguage,originalTitle,overview,popularity,posterPath,releaseDate,title,video,voteAverage,voteCount,character,creditId,order);

@override
String toString() {
  return 'Cast(adult: $adult, backdropPath: $backdropPath, genreId: $genreId, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, character: $character, creditId: $creditId, order: $order)';
}


}

/// @nodoc
abstract mixin class $CastCopyWith<$Res>  {
  factory $CastCopyWith(Cast value, $Res Function(Cast) _then) = _$CastCopyWithImpl;
@useResult
$Res call({
 bool? adult,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'genre_ids') List<int>? genreId, int? id,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_title') String? originalTitle, String? overview, double? popularity,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'release_date') String? releaseDate, String? title, bool? video,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount, String? character,@JsonKey(name: 'credit_id') String? creditId, int? order
});




}
/// @nodoc
class _$CastCopyWithImpl<$Res>
    implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._self, this._then);

  final Cast _self;
  final $Res Function(Cast) _then;

/// Create a copy of Cast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = freezed,Object? backdropPath = freezed,Object? genreId = freezed,Object? id = freezed,Object? originalLanguage = freezed,Object? originalTitle = freezed,Object? overview = freezed,Object? popularity = freezed,Object? posterPath = freezed,Object? releaseDate = freezed,Object? title = freezed,Object? video = freezed,Object? voteAverage = freezed,Object? voteCount = freezed,Object? character = freezed,Object? creditId = freezed,Object? order = freezed,}) {
  return _then(_self.copyWith(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,genreId: freezed == genreId ? _self.genreId : genreId // ignore: cast_nullable_to_non_nullable
as List<int>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,character: freezed == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String?,creditId: freezed == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Cast].
extension CastPatterns on Cast {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cast value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cast() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cast value)  $default,){
final _that = this;
switch (_that) {
case _Cast():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cast value)?  $default,){
final _that = this;
switch (_that) {
case _Cast() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? adult, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'genre_ids')  List<int>? genreId,  int? id, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_title')  String? originalTitle,  String? overview,  double? popularity, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'release_date')  String? releaseDate,  String? title,  bool? video, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount,  String? character, @JsonKey(name: 'credit_id')  String? creditId,  int? order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cast() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.genreId,_that.id,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.title,_that.video,_that.voteAverage,_that.voteCount,_that.character,_that.creditId,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? adult, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'genre_ids')  List<int>? genreId,  int? id, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_title')  String? originalTitle,  String? overview,  double? popularity, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'release_date')  String? releaseDate,  String? title,  bool? video, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount,  String? character, @JsonKey(name: 'credit_id')  String? creditId,  int? order)  $default,) {final _that = this;
switch (_that) {
case _Cast():
return $default(_that.adult,_that.backdropPath,_that.genreId,_that.id,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.title,_that.video,_that.voteAverage,_that.voteCount,_that.character,_that.creditId,_that.order);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? adult, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'genre_ids')  List<int>? genreId,  int? id, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_title')  String? originalTitle,  String? overview,  double? popularity, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'release_date')  String? releaseDate,  String? title,  bool? video, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount,  String? character, @JsonKey(name: 'credit_id')  String? creditId,  int? order)?  $default,) {final _that = this;
switch (_that) {
case _Cast() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.genreId,_that.id,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.title,_that.video,_that.voteAverage,_that.voteCount,_that.character,_that.creditId,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cast implements Cast {
  const _Cast({this.adult, @JsonKey(name: 'backdrop_path') this.backdropPath, @JsonKey(name: 'genre_ids') final  List<int>? genreId, this.id, @JsonKey(name: 'original_language') this.originalLanguage, @JsonKey(name: 'original_title') this.originalTitle, this.overview, this.popularity, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'release_date') this.releaseDate, this.title, this.video, @JsonKey(name: 'vote_average') this.voteAverage, @JsonKey(name: 'vote_count') this.voteCount, this.character, @JsonKey(name: 'credit_id') this.creditId, this.order}): _genreId = genreId;
  factory _Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);

@override final  bool? adult;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
 final  List<int>? _genreId;
@override@JsonKey(name: 'genre_ids') List<int>? get genreId {
  final value = _genreId;
  if (value == null) return null;
  if (_genreId is EqualUnmodifiableListView) return _genreId;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? id;
@override@JsonKey(name: 'original_language') final  String? originalLanguage;
@override@JsonKey(name: 'original_title') final  String? originalTitle;
@override final  String? overview;
@override final  double? popularity;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'release_date') final  String? releaseDate;
@override final  String? title;
@override final  bool? video;
@override@JsonKey(name: 'vote_average') final  double? voteAverage;
@override@JsonKey(name: 'vote_count') final  int? voteCount;
@override final  String? character;
@override@JsonKey(name: 'credit_id') final  String? creditId;
@override final  int? order;

/// Create a copy of Cast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CastCopyWith<_Cast> get copyWith => __$CastCopyWithImpl<_Cast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CastToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cast&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other._genreId, _genreId)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.character, character) || other.character == character)&&(identical(other.creditId, creditId) || other.creditId == creditId)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(_genreId),id,originalLanguage,originalTitle,overview,popularity,posterPath,releaseDate,title,video,voteAverage,voteCount,character,creditId,order);

@override
String toString() {
  return 'Cast(adult: $adult, backdropPath: $backdropPath, genreId: $genreId, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, character: $character, creditId: $creditId, order: $order)';
}


}

/// @nodoc
abstract mixin class _$CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$CastCopyWith(_Cast value, $Res Function(_Cast) _then) = __$CastCopyWithImpl;
@override @useResult
$Res call({
 bool? adult,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'genre_ids') List<int>? genreId, int? id,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_title') String? originalTitle, String? overview, double? popularity,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'release_date') String? releaseDate, String? title, bool? video,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount, String? character,@JsonKey(name: 'credit_id') String? creditId, int? order
});




}
/// @nodoc
class __$CastCopyWithImpl<$Res>
    implements _$CastCopyWith<$Res> {
  __$CastCopyWithImpl(this._self, this._then);

  final _Cast _self;
  final $Res Function(_Cast) _then;

/// Create a copy of Cast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = freezed,Object? backdropPath = freezed,Object? genreId = freezed,Object? id = freezed,Object? originalLanguage = freezed,Object? originalTitle = freezed,Object? overview = freezed,Object? popularity = freezed,Object? posterPath = freezed,Object? releaseDate = freezed,Object? title = freezed,Object? video = freezed,Object? voteAverage = freezed,Object? voteCount = freezed,Object? character = freezed,Object? creditId = freezed,Object? order = freezed,}) {
  return _then(_Cast(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,genreId: freezed == genreId ? _self._genreId : genreId // ignore: cast_nullable_to_non_nullable
as List<int>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,character: freezed == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String?,creditId: freezed == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
