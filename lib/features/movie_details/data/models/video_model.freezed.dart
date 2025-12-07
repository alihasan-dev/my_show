// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoModel {

 int? get id; List<Results>? get results;
/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoModelCopyWith<VideoModel> get copyWith => _$VideoModelCopyWithImpl<VideoModel>(this as VideoModel, _$identity);

  /// Serializes this VideoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'VideoModel(id: $id, results: $results)';
}


}

/// @nodoc
abstract mixin class $VideoModelCopyWith<$Res>  {
  factory $VideoModelCopyWith(VideoModel value, $Res Function(VideoModel) _then) = _$VideoModelCopyWithImpl;
@useResult
$Res call({
 int? id, List<Results>? results
});




}
/// @nodoc
class _$VideoModelCopyWithImpl<$Res>
    implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._self, this._then);

  final VideoModel _self;
  final $Res Function(VideoModel) _then;

/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? results = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Results>?,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoModel].
extension VideoModelPatterns on VideoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoModel value)  $default,){
final _that = this;
switch (_that) {
case _VideoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoModel value)?  $default,){
final _that = this;
switch (_that) {
case _VideoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  List<Results>? results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoModel() when $default != null:
return $default(_that.id,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  List<Results>? results)  $default,) {final _that = this;
switch (_that) {
case _VideoModel():
return $default(_that.id,_that.results);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  List<Results>? results)?  $default,) {final _that = this;
switch (_that) {
case _VideoModel() when $default != null:
return $default(_that.id,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoModel implements VideoModel {
  const _VideoModel({this.id, final  List<Results>? results}): _results = results;
  factory _VideoModel.fromJson(Map<String, dynamic> json) => _$VideoModelFromJson(json);

@override final  int? id;
 final  List<Results>? _results;
@override List<Results>? get results {
  final value = _results;
  if (value == null) return null;
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoModelCopyWith<_VideoModel> get copyWith => __$VideoModelCopyWithImpl<_VideoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'VideoModel(id: $id, results: $results)';
}


}

/// @nodoc
abstract mixin class _$VideoModelCopyWith<$Res> implements $VideoModelCopyWith<$Res> {
  factory _$VideoModelCopyWith(_VideoModel value, $Res Function(_VideoModel) _then) = __$VideoModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, List<Results>? results
});




}
/// @nodoc
class __$VideoModelCopyWithImpl<$Res>
    implements _$VideoModelCopyWith<$Res> {
  __$VideoModelCopyWithImpl(this._self, this._then);

  final _VideoModel _self;
  final $Res Function(_VideoModel) _then;

/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? results = freezed,}) {
  return _then(_VideoModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Results>?,
  ));
}


}


/// @nodoc
mixin _$Results {

 String? get id;@JsonKey(name: 'iso_639_1') String? get iso6391;@JsonKey(name: 'iso_3166_1') String? get iso31661; String? get key; String? get name; String? get site; int? get size; String? get type; bool? get official;@JsonKey(name: 'published_at') String? get publishedAt;
/// Create a copy of Results
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultsCopyWith<Results> get copyWith => _$ResultsCopyWithImpl<Results>(this as Results, _$identity);

  /// Serializes this Results to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Results&&(identical(other.id, id) || other.id == id)&&(identical(other.iso6391, iso6391) || other.iso6391 == iso6391)&&(identical(other.iso31661, iso31661) || other.iso31661 == iso31661)&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name)&&(identical(other.site, site) || other.site == site)&&(identical(other.size, size) || other.size == size)&&(identical(other.type, type) || other.type == type)&&(identical(other.official, official) || other.official == official)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,iso6391,iso31661,key,name,site,size,type,official,publishedAt);

@override
String toString() {
  return 'Results(id: $id, iso6391: $iso6391, iso31661: $iso31661, key: $key, name: $name, site: $site, size: $size, type: $type, official: $official, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class $ResultsCopyWith<$Res>  {
  factory $ResultsCopyWith(Results value, $Res Function(Results) _then) = _$ResultsCopyWithImpl;
@useResult
$Res call({
 String? id,@JsonKey(name: 'iso_639_1') String? iso6391,@JsonKey(name: 'iso_3166_1') String? iso31661, String? key, String? name, String? site, int? size, String? type, bool? official,@JsonKey(name: 'published_at') String? publishedAt
});




}
/// @nodoc
class _$ResultsCopyWithImpl<$Res>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._self, this._then);

  final Results _self;
  final $Res Function(Results) _then;

/// Create a copy of Results
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? iso6391 = freezed,Object? iso31661 = freezed,Object? key = freezed,Object? name = freezed,Object? site = freezed,Object? size = freezed,Object? type = freezed,Object? official = freezed,Object? publishedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,iso6391: freezed == iso6391 ? _self.iso6391 : iso6391 // ignore: cast_nullable_to_non_nullable
as String?,iso31661: freezed == iso31661 ? _self.iso31661 : iso31661 // ignore: cast_nullable_to_non_nullable
as String?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,site: freezed == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,official: freezed == official ? _self.official : official // ignore: cast_nullable_to_non_nullable
as bool?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Results].
extension ResultsPatterns on Results {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Results value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Results() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Results value)  $default,){
final _that = this;
switch (_that) {
case _Results():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Results value)?  $default,){
final _that = this;
switch (_that) {
case _Results() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: 'iso_639_1')  String? iso6391, @JsonKey(name: 'iso_3166_1')  String? iso31661,  String? key,  String? name,  String? site,  int? size,  String? type,  bool? official, @JsonKey(name: 'published_at')  String? publishedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Results() when $default != null:
return $default(_that.id,_that.iso6391,_that.iso31661,_that.key,_that.name,_that.site,_that.size,_that.type,_that.official,_that.publishedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: 'iso_639_1')  String? iso6391, @JsonKey(name: 'iso_3166_1')  String? iso31661,  String? key,  String? name,  String? site,  int? size,  String? type,  bool? official, @JsonKey(name: 'published_at')  String? publishedAt)  $default,) {final _that = this;
switch (_that) {
case _Results():
return $default(_that.id,_that.iso6391,_that.iso31661,_that.key,_that.name,_that.site,_that.size,_that.type,_that.official,_that.publishedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id, @JsonKey(name: 'iso_639_1')  String? iso6391, @JsonKey(name: 'iso_3166_1')  String? iso31661,  String? key,  String? name,  String? site,  int? size,  String? type,  bool? official, @JsonKey(name: 'published_at')  String? publishedAt)?  $default,) {final _that = this;
switch (_that) {
case _Results() when $default != null:
return $default(_that.id,_that.iso6391,_that.iso31661,_that.key,_that.name,_that.site,_that.size,_that.type,_that.official,_that.publishedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Results implements Results {
  const _Results({this.id, @JsonKey(name: 'iso_639_1') this.iso6391, @JsonKey(name: 'iso_3166_1') this.iso31661, this.key, this.name, this.site, this.size, this.type, this.official, @JsonKey(name: 'published_at') this.publishedAt});
  factory _Results.fromJson(Map<String, dynamic> json) => _$ResultsFromJson(json);

@override final  String? id;
@override@JsonKey(name: 'iso_639_1') final  String? iso6391;
@override@JsonKey(name: 'iso_3166_1') final  String? iso31661;
@override final  String? key;
@override final  String? name;
@override final  String? site;
@override final  int? size;
@override final  String? type;
@override final  bool? official;
@override@JsonKey(name: 'published_at') final  String? publishedAt;

/// Create a copy of Results
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResultsCopyWith<_Results> get copyWith => __$ResultsCopyWithImpl<_Results>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResultsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Results&&(identical(other.id, id) || other.id == id)&&(identical(other.iso6391, iso6391) || other.iso6391 == iso6391)&&(identical(other.iso31661, iso31661) || other.iso31661 == iso31661)&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name)&&(identical(other.site, site) || other.site == site)&&(identical(other.size, size) || other.size == size)&&(identical(other.type, type) || other.type == type)&&(identical(other.official, official) || other.official == official)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,iso6391,iso31661,key,name,site,size,type,official,publishedAt);

@override
String toString() {
  return 'Results(id: $id, iso6391: $iso6391, iso31661: $iso31661, key: $key, name: $name, site: $site, size: $size, type: $type, official: $official, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class _$ResultsCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$ResultsCopyWith(_Results value, $Res Function(_Results) _then) = __$ResultsCopyWithImpl;
@override @useResult
$Res call({
 String? id,@JsonKey(name: 'iso_639_1') String? iso6391,@JsonKey(name: 'iso_3166_1') String? iso31661, String? key, String? name, String? site, int? size, String? type, bool? official,@JsonKey(name: 'published_at') String? publishedAt
});




}
/// @nodoc
class __$ResultsCopyWithImpl<$Res>
    implements _$ResultsCopyWith<$Res> {
  __$ResultsCopyWithImpl(this._self, this._then);

  final _Results _self;
  final $Res Function(_Results) _then;

/// Create a copy of Results
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? iso6391 = freezed,Object? iso31661 = freezed,Object? key = freezed,Object? name = freezed,Object? site = freezed,Object? size = freezed,Object? type = freezed,Object? official = freezed,Object? publishedAt = freezed,}) {
  return _then(_Results(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,iso6391: freezed == iso6391 ? _self.iso6391 : iso6391 // ignore: cast_nullable_to_non_nullable
as String?,iso31661: freezed == iso31661 ? _self.iso31661 : iso31661 // ignore: cast_nullable_to_non_nullable
as String?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,site: freezed == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,official: freezed == official ? _self.official : official // ignore: cast_nullable_to_non_nullable
as bool?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
