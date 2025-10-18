// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_keyword_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieKeywordModel {

 int? get id; List<Keyword>? get keywords;@JsonKey(name: 'results') List<Keyword>? get results;
/// Create a copy of MovieKeywordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieKeywordModelCopyWith<MovieKeywordModel> get copyWith => _$MovieKeywordModelCopyWithImpl<MovieKeywordModel>(this as MovieKeywordModel, _$identity);

  /// Serializes this MovieKeywordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieKeywordModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.keywords, keywords)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(keywords),const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'MovieKeywordModel(id: $id, keywords: $keywords, results: $results)';
}


}

/// @nodoc
abstract mixin class $MovieKeywordModelCopyWith<$Res>  {
  factory $MovieKeywordModelCopyWith(MovieKeywordModel value, $Res Function(MovieKeywordModel) _then) = _$MovieKeywordModelCopyWithImpl;
@useResult
$Res call({
 int? id, List<Keyword>? keywords,@JsonKey(name: 'results') List<Keyword>? results
});




}
/// @nodoc
class _$MovieKeywordModelCopyWithImpl<$Res>
    implements $MovieKeywordModelCopyWith<$Res> {
  _$MovieKeywordModelCopyWithImpl(this._self, this._then);

  final MovieKeywordModel _self;
  final $Res Function(MovieKeywordModel) _then;

/// Create a copy of MovieKeywordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? keywords = freezed,Object? results = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,keywords: freezed == keywords ? _self.keywords : keywords // ignore: cast_nullable_to_non_nullable
as List<Keyword>?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Keyword>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieKeywordModel].
extension MovieKeywordModelPatterns on MovieKeywordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieKeywordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieKeywordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieKeywordModel value)  $default,){
final _that = this;
switch (_that) {
case _MovieKeywordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieKeywordModel value)?  $default,){
final _that = this;
switch (_that) {
case _MovieKeywordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  List<Keyword>? keywords, @JsonKey(name: 'results')  List<Keyword>? results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieKeywordModel() when $default != null:
return $default(_that.id,_that.keywords,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  List<Keyword>? keywords, @JsonKey(name: 'results')  List<Keyword>? results)  $default,) {final _that = this;
switch (_that) {
case _MovieKeywordModel():
return $default(_that.id,_that.keywords,_that.results);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  List<Keyword>? keywords, @JsonKey(name: 'results')  List<Keyword>? results)?  $default,) {final _that = this;
switch (_that) {
case _MovieKeywordModel() when $default != null:
return $default(_that.id,_that.keywords,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieKeywordModel implements MovieKeywordModel {
  const _MovieKeywordModel({this.id, final  List<Keyword>? keywords, @JsonKey(name: 'results') final  List<Keyword>? results}): _keywords = keywords,_results = results;
  factory _MovieKeywordModel.fromJson(Map<String, dynamic> json) => _$MovieKeywordModelFromJson(json);

@override final  int? id;
 final  List<Keyword>? _keywords;
@override List<Keyword>? get keywords {
  final value = _keywords;
  if (value == null) return null;
  if (_keywords is EqualUnmodifiableListView) return _keywords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Keyword>? _results;
@override@JsonKey(name: 'results') List<Keyword>? get results {
  final value = _results;
  if (value == null) return null;
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MovieKeywordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieKeywordModelCopyWith<_MovieKeywordModel> get copyWith => __$MovieKeywordModelCopyWithImpl<_MovieKeywordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieKeywordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieKeywordModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._keywords, _keywords)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_keywords),const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'MovieKeywordModel(id: $id, keywords: $keywords, results: $results)';
}


}

/// @nodoc
abstract mixin class _$MovieKeywordModelCopyWith<$Res> implements $MovieKeywordModelCopyWith<$Res> {
  factory _$MovieKeywordModelCopyWith(_MovieKeywordModel value, $Res Function(_MovieKeywordModel) _then) = __$MovieKeywordModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, List<Keyword>? keywords,@JsonKey(name: 'results') List<Keyword>? results
});




}
/// @nodoc
class __$MovieKeywordModelCopyWithImpl<$Res>
    implements _$MovieKeywordModelCopyWith<$Res> {
  __$MovieKeywordModelCopyWithImpl(this._self, this._then);

  final _MovieKeywordModel _self;
  final $Res Function(_MovieKeywordModel) _then;

/// Create a copy of MovieKeywordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? keywords = freezed,Object? results = freezed,}) {
  return _then(_MovieKeywordModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,keywords: freezed == keywords ? _self._keywords : keywords // ignore: cast_nullable_to_non_nullable
as List<Keyword>?,results: freezed == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Keyword>?,
  ));
}


}


/// @nodoc
mixin _$Keyword {

 int? get id; String? get name;
/// Create a copy of Keyword
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KeywordCopyWith<Keyword> get copyWith => _$KeywordCopyWithImpl<Keyword>(this as Keyword, _$identity);

  /// Serializes this Keyword to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Keyword&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Keyword(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $KeywordCopyWith<$Res>  {
  factory $KeywordCopyWith(Keyword value, $Res Function(Keyword) _then) = _$KeywordCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$KeywordCopyWithImpl<$Res>
    implements $KeywordCopyWith<$Res> {
  _$KeywordCopyWithImpl(this._self, this._then);

  final Keyword _self;
  final $Res Function(Keyword) _then;

/// Create a copy of Keyword
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Keyword].
extension KeywordPatterns on Keyword {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Keyword value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Keyword() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Keyword value)  $default,){
final _that = this;
switch (_that) {
case _Keyword():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Keyword value)?  $default,){
final _that = this;
switch (_that) {
case _Keyword() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Keyword() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _Keyword():
return $default(_that.id,_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _Keyword() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Keyword implements Keyword {
  const _Keyword({this.id, this.name});
  factory _Keyword.fromJson(Map<String, dynamic> json) => _$KeywordFromJson(json);

@override final  int? id;
@override final  String? name;

/// Create a copy of Keyword
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KeywordCopyWith<_Keyword> get copyWith => __$KeywordCopyWithImpl<_Keyword>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KeywordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Keyword&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Keyword(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$KeywordCopyWith<$Res> implements $KeywordCopyWith<$Res> {
  factory _$KeywordCopyWith(_Keyword value, $Res Function(_Keyword) _then) = __$KeywordCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$KeywordCopyWithImpl<$Res>
    implements _$KeywordCopyWith<$Res> {
  __$KeywordCopyWithImpl(this._self, this._then);

  final _Keyword _self;
  final $Res Function(_Keyword) _then;

/// Create a copy of Keyword
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_Keyword(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
