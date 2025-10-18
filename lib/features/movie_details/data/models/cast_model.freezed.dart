// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CastModel {

 int? get id; List<Cast>? get cast; List<Crew>? get crew;
/// Create a copy of CastModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CastModelCopyWith<CastModel> get copyWith => _$CastModelCopyWithImpl<CastModel>(this as CastModel, _$identity);

  /// Serializes this CastModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CastModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.cast, cast)&&const DeepCollectionEquality().equals(other.crew, crew));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(cast),const DeepCollectionEquality().hash(crew));

@override
String toString() {
  return 'CastModel(id: $id, cast: $cast, crew: $crew)';
}


}

/// @nodoc
abstract mixin class $CastModelCopyWith<$Res>  {
  factory $CastModelCopyWith(CastModel value, $Res Function(CastModel) _then) = _$CastModelCopyWithImpl;
@useResult
$Res call({
 int? id, List<Cast>? cast, List<Crew>? crew
});




}
/// @nodoc
class _$CastModelCopyWithImpl<$Res>
    implements $CastModelCopyWith<$Res> {
  _$CastModelCopyWithImpl(this._self, this._then);

  final CastModel _self;
  final $Res Function(CastModel) _then;

/// Create a copy of CastModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? cast = freezed,Object? crew = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,cast: freezed == cast ? _self.cast : cast // ignore: cast_nullable_to_non_nullable
as List<Cast>?,crew: freezed == crew ? _self.crew : crew // ignore: cast_nullable_to_non_nullable
as List<Crew>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CastModel].
extension CastModelPatterns on CastModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CastModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CastModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CastModel value)  $default,){
final _that = this;
switch (_that) {
case _CastModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CastModel value)?  $default,){
final _that = this;
switch (_that) {
case _CastModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  List<Cast>? cast,  List<Crew>? crew)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CastModel() when $default != null:
return $default(_that.id,_that.cast,_that.crew);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  List<Cast>? cast,  List<Crew>? crew)  $default,) {final _that = this;
switch (_that) {
case _CastModel():
return $default(_that.id,_that.cast,_that.crew);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  List<Cast>? cast,  List<Crew>? crew)?  $default,) {final _that = this;
switch (_that) {
case _CastModel() when $default != null:
return $default(_that.id,_that.cast,_that.crew);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CastModel implements CastModel {
  const _CastModel({this.id, final  List<Cast>? cast, final  List<Crew>? crew}): _cast = cast,_crew = crew;
  factory _CastModel.fromJson(Map<String, dynamic> json) => _$CastModelFromJson(json);

@override final  int? id;
 final  List<Cast>? _cast;
@override List<Cast>? get cast {
  final value = _cast;
  if (value == null) return null;
  if (_cast is EqualUnmodifiableListView) return _cast;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Crew>? _crew;
@override List<Crew>? get crew {
  final value = _crew;
  if (value == null) return null;
  if (_crew is EqualUnmodifiableListView) return _crew;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CastModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CastModelCopyWith<_CastModel> get copyWith => __$CastModelCopyWithImpl<_CastModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CastModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CastModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._cast, _cast)&&const DeepCollectionEquality().equals(other._crew, _crew));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_cast),const DeepCollectionEquality().hash(_crew));

@override
String toString() {
  return 'CastModel(id: $id, cast: $cast, crew: $crew)';
}


}

/// @nodoc
abstract mixin class _$CastModelCopyWith<$Res> implements $CastModelCopyWith<$Res> {
  factory _$CastModelCopyWith(_CastModel value, $Res Function(_CastModel) _then) = __$CastModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, List<Cast>? cast, List<Crew>? crew
});




}
/// @nodoc
class __$CastModelCopyWithImpl<$Res>
    implements _$CastModelCopyWith<$Res> {
  __$CastModelCopyWithImpl(this._self, this._then);

  final _CastModel _self;
  final $Res Function(_CastModel) _then;

/// Create a copy of CastModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? cast = freezed,Object? crew = freezed,}) {
  return _then(_CastModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,cast: freezed == cast ? _self._cast : cast // ignore: cast_nullable_to_non_nullable
as List<Cast>?,crew: freezed == crew ? _self._crew : crew // ignore: cast_nullable_to_non_nullable
as List<Crew>?,
  ));
}


}


/// @nodoc
mixin _$Cast {

 bool? get adult; int? get gender; int? get id;@JsonKey(name: 'known_for_department') String? get knownFordepartment; String? get name;@JsonKey(name: 'original_name') String? get originalName; double? get popularity;@JsonKey(name: 'profile_path') String? get profilePath;@JsonKey(name: 'cast_id') int? get castId;@JsonKey(name: 'character') String? get character;@JsonKey(name: 'credit_id') String? get creditId;@JsonKey(name: 'order') int? get order;
/// Create a copy of Cast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CastCopyWith<Cast> get copyWith => _$CastCopyWithImpl<Cast>(this as Cast, _$identity);

  /// Serializes this Cast to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cast&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.id, id) || other.id == id)&&(identical(other.knownFordepartment, knownFordepartment) || other.knownFordepartment == knownFordepartment)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath)&&(identical(other.castId, castId) || other.castId == castId)&&(identical(other.character, character) || other.character == character)&&(identical(other.creditId, creditId) || other.creditId == creditId)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,gender,id,knownFordepartment,name,originalName,popularity,profilePath,castId,character,creditId,order);

@override
String toString() {
  return 'Cast(adult: $adult, gender: $gender, id: $id, knownFordepartment: $knownFordepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, castId: $castId, character: $character, creditId: $creditId, order: $order)';
}


}

/// @nodoc
abstract mixin class $CastCopyWith<$Res>  {
  factory $CastCopyWith(Cast value, $Res Function(Cast) _then) = _$CastCopyWithImpl;
@useResult
$Res call({
 bool? adult, int? gender, int? id,@JsonKey(name: 'known_for_department') String? knownFordepartment, String? name,@JsonKey(name: 'original_name') String? originalName, double? popularity,@JsonKey(name: 'profile_path') String? profilePath,@JsonKey(name: 'cast_id') int? castId,@JsonKey(name: 'character') String? character,@JsonKey(name: 'credit_id') String? creditId,@JsonKey(name: 'order') int? order
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
@pragma('vm:prefer-inline') @override $Res call({Object? adult = freezed,Object? gender = freezed,Object? id = freezed,Object? knownFordepartment = freezed,Object? name = freezed,Object? originalName = freezed,Object? popularity = freezed,Object? profilePath = freezed,Object? castId = freezed,Object? character = freezed,Object? creditId = freezed,Object? order = freezed,}) {
  return _then(_self.copyWith(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,knownFordepartment: freezed == knownFordepartment ? _self.knownFordepartment : knownFordepartment // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,castId: freezed == castId ? _self.castId : castId // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? adult,  int? gender,  int? id, @JsonKey(name: 'known_for_department')  String? knownFordepartment,  String? name, @JsonKey(name: 'original_name')  String? originalName,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath, @JsonKey(name: 'cast_id')  int? castId, @JsonKey(name: 'character')  String? character, @JsonKey(name: 'credit_id')  String? creditId, @JsonKey(name: 'order')  int? order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cast() when $default != null:
return $default(_that.adult,_that.gender,_that.id,_that.knownFordepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.castId,_that.character,_that.creditId,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? adult,  int? gender,  int? id, @JsonKey(name: 'known_for_department')  String? knownFordepartment,  String? name, @JsonKey(name: 'original_name')  String? originalName,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath, @JsonKey(name: 'cast_id')  int? castId, @JsonKey(name: 'character')  String? character, @JsonKey(name: 'credit_id')  String? creditId, @JsonKey(name: 'order')  int? order)  $default,) {final _that = this;
switch (_that) {
case _Cast():
return $default(_that.adult,_that.gender,_that.id,_that.knownFordepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.castId,_that.character,_that.creditId,_that.order);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? adult,  int? gender,  int? id, @JsonKey(name: 'known_for_department')  String? knownFordepartment,  String? name, @JsonKey(name: 'original_name')  String? originalName,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath, @JsonKey(name: 'cast_id')  int? castId, @JsonKey(name: 'character')  String? character, @JsonKey(name: 'credit_id')  String? creditId, @JsonKey(name: 'order')  int? order)?  $default,) {final _that = this;
switch (_that) {
case _Cast() when $default != null:
return $default(_that.adult,_that.gender,_that.id,_that.knownFordepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.castId,_that.character,_that.creditId,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cast implements Cast {
  const _Cast({this.adult, this.gender, this.id, @JsonKey(name: 'known_for_department') this.knownFordepartment, this.name, @JsonKey(name: 'original_name') this.originalName, this.popularity, @JsonKey(name: 'profile_path') this.profilePath, @JsonKey(name: 'cast_id') this.castId, @JsonKey(name: 'character') this.character, @JsonKey(name: 'credit_id') this.creditId, @JsonKey(name: 'order') this.order});
  factory _Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);

@override final  bool? adult;
@override final  int? gender;
@override final  int? id;
@override@JsonKey(name: 'known_for_department') final  String? knownFordepartment;
@override final  String? name;
@override@JsonKey(name: 'original_name') final  String? originalName;
@override final  double? popularity;
@override@JsonKey(name: 'profile_path') final  String? profilePath;
@override@JsonKey(name: 'cast_id') final  int? castId;
@override@JsonKey(name: 'character') final  String? character;
@override@JsonKey(name: 'credit_id') final  String? creditId;
@override@JsonKey(name: 'order') final  int? order;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cast&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.id, id) || other.id == id)&&(identical(other.knownFordepartment, knownFordepartment) || other.knownFordepartment == knownFordepartment)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath)&&(identical(other.castId, castId) || other.castId == castId)&&(identical(other.character, character) || other.character == character)&&(identical(other.creditId, creditId) || other.creditId == creditId)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,gender,id,knownFordepartment,name,originalName,popularity,profilePath,castId,character,creditId,order);

@override
String toString() {
  return 'Cast(adult: $adult, gender: $gender, id: $id, knownFordepartment: $knownFordepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, castId: $castId, character: $character, creditId: $creditId, order: $order)';
}


}

/// @nodoc
abstract mixin class _$CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$CastCopyWith(_Cast value, $Res Function(_Cast) _then) = __$CastCopyWithImpl;
@override @useResult
$Res call({
 bool? adult, int? gender, int? id,@JsonKey(name: 'known_for_department') String? knownFordepartment, String? name,@JsonKey(name: 'original_name') String? originalName, double? popularity,@JsonKey(name: 'profile_path') String? profilePath,@JsonKey(name: 'cast_id') int? castId,@JsonKey(name: 'character') String? character,@JsonKey(name: 'credit_id') String? creditId,@JsonKey(name: 'order') int? order
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
@override @pragma('vm:prefer-inline') $Res call({Object? adult = freezed,Object? gender = freezed,Object? id = freezed,Object? knownFordepartment = freezed,Object? name = freezed,Object? originalName = freezed,Object? popularity = freezed,Object? profilePath = freezed,Object? castId = freezed,Object? character = freezed,Object? creditId = freezed,Object? order = freezed,}) {
  return _then(_Cast(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,knownFordepartment: freezed == knownFordepartment ? _self.knownFordepartment : knownFordepartment // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,castId: freezed == castId ? _self.castId : castId // ignore: cast_nullable_to_non_nullable
as int?,character: freezed == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String?,creditId: freezed == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Crew {

 bool? get adult; int? get gender; int? get id;@JsonKey(name: 'known_for_department') String? get knownFordepartment; String? get name;@JsonKey(name: 'original_name') String? get originalName; double? get popularity;@JsonKey(name: 'profile_path') String? get profilePath;@JsonKey(name: 'credit_id') String? get creditId; String? get department; String? get job;
/// Create a copy of Crew
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrewCopyWith<Crew> get copyWith => _$CrewCopyWithImpl<Crew>(this as Crew, _$identity);

  /// Serializes this Crew to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Crew&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.id, id) || other.id == id)&&(identical(other.knownFordepartment, knownFordepartment) || other.knownFordepartment == knownFordepartment)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath)&&(identical(other.creditId, creditId) || other.creditId == creditId)&&(identical(other.department, department) || other.department == department)&&(identical(other.job, job) || other.job == job));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,gender,id,knownFordepartment,name,originalName,popularity,profilePath,creditId,department,job);

@override
String toString() {
  return 'Crew(adult: $adult, gender: $gender, id: $id, knownFordepartment: $knownFordepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, creditId: $creditId, department: $department, job: $job)';
}


}

/// @nodoc
abstract mixin class $CrewCopyWith<$Res>  {
  factory $CrewCopyWith(Crew value, $Res Function(Crew) _then) = _$CrewCopyWithImpl;
@useResult
$Res call({
 bool? adult, int? gender, int? id,@JsonKey(name: 'known_for_department') String? knownFordepartment, String? name,@JsonKey(name: 'original_name') String? originalName, double? popularity,@JsonKey(name: 'profile_path') String? profilePath,@JsonKey(name: 'credit_id') String? creditId, String? department, String? job
});




}
/// @nodoc
class _$CrewCopyWithImpl<$Res>
    implements $CrewCopyWith<$Res> {
  _$CrewCopyWithImpl(this._self, this._then);

  final Crew _self;
  final $Res Function(Crew) _then;

/// Create a copy of Crew
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = freezed,Object? gender = freezed,Object? id = freezed,Object? knownFordepartment = freezed,Object? name = freezed,Object? originalName = freezed,Object? popularity = freezed,Object? profilePath = freezed,Object? creditId = freezed,Object? department = freezed,Object? job = freezed,}) {
  return _then(_self.copyWith(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,knownFordepartment: freezed == knownFordepartment ? _self.knownFordepartment : knownFordepartment // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,creditId: freezed == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,job: freezed == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Crew].
extension CrewPatterns on Crew {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Crew value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Crew() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Crew value)  $default,){
final _that = this;
switch (_that) {
case _Crew():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Crew value)?  $default,){
final _that = this;
switch (_that) {
case _Crew() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? adult,  int? gender,  int? id, @JsonKey(name: 'known_for_department')  String? knownFordepartment,  String? name, @JsonKey(name: 'original_name')  String? originalName,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath, @JsonKey(name: 'credit_id')  String? creditId,  String? department,  String? job)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Crew() when $default != null:
return $default(_that.adult,_that.gender,_that.id,_that.knownFordepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.creditId,_that.department,_that.job);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? adult,  int? gender,  int? id, @JsonKey(name: 'known_for_department')  String? knownFordepartment,  String? name, @JsonKey(name: 'original_name')  String? originalName,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath, @JsonKey(name: 'credit_id')  String? creditId,  String? department,  String? job)  $default,) {final _that = this;
switch (_that) {
case _Crew():
return $default(_that.adult,_that.gender,_that.id,_that.knownFordepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.creditId,_that.department,_that.job);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? adult,  int? gender,  int? id, @JsonKey(name: 'known_for_department')  String? knownFordepartment,  String? name, @JsonKey(name: 'original_name')  String? originalName,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath, @JsonKey(name: 'credit_id')  String? creditId,  String? department,  String? job)?  $default,) {final _that = this;
switch (_that) {
case _Crew() when $default != null:
return $default(_that.adult,_that.gender,_that.id,_that.knownFordepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.creditId,_that.department,_that.job);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Crew implements Crew {
  const _Crew({this.adult, this.gender, this.id, @JsonKey(name: 'known_for_department') this.knownFordepartment, this.name, @JsonKey(name: 'original_name') this.originalName, this.popularity, @JsonKey(name: 'profile_path') this.profilePath, @JsonKey(name: 'credit_id') this.creditId, this.department, this.job});
  factory _Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);

@override final  bool? adult;
@override final  int? gender;
@override final  int? id;
@override@JsonKey(name: 'known_for_department') final  String? knownFordepartment;
@override final  String? name;
@override@JsonKey(name: 'original_name') final  String? originalName;
@override final  double? popularity;
@override@JsonKey(name: 'profile_path') final  String? profilePath;
@override@JsonKey(name: 'credit_id') final  String? creditId;
@override final  String? department;
@override final  String? job;

/// Create a copy of Crew
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrewCopyWith<_Crew> get copyWith => __$CrewCopyWithImpl<_Crew>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CrewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Crew&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.id, id) || other.id == id)&&(identical(other.knownFordepartment, knownFordepartment) || other.knownFordepartment == knownFordepartment)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath)&&(identical(other.creditId, creditId) || other.creditId == creditId)&&(identical(other.department, department) || other.department == department)&&(identical(other.job, job) || other.job == job));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,gender,id,knownFordepartment,name,originalName,popularity,profilePath,creditId,department,job);

@override
String toString() {
  return 'Crew(adult: $adult, gender: $gender, id: $id, knownFordepartment: $knownFordepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, creditId: $creditId, department: $department, job: $job)';
}


}

/// @nodoc
abstract mixin class _$CrewCopyWith<$Res> implements $CrewCopyWith<$Res> {
  factory _$CrewCopyWith(_Crew value, $Res Function(_Crew) _then) = __$CrewCopyWithImpl;
@override @useResult
$Res call({
 bool? adult, int? gender, int? id,@JsonKey(name: 'known_for_department') String? knownFordepartment, String? name,@JsonKey(name: 'original_name') String? originalName, double? popularity,@JsonKey(name: 'profile_path') String? profilePath,@JsonKey(name: 'credit_id') String? creditId, String? department, String? job
});




}
/// @nodoc
class __$CrewCopyWithImpl<$Res>
    implements _$CrewCopyWith<$Res> {
  __$CrewCopyWithImpl(this._self, this._then);

  final _Crew _self;
  final $Res Function(_Crew) _then;

/// Create a copy of Crew
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = freezed,Object? gender = freezed,Object? id = freezed,Object? knownFordepartment = freezed,Object? name = freezed,Object? originalName = freezed,Object? popularity = freezed,Object? profilePath = freezed,Object? creditId = freezed,Object? department = freezed,Object? job = freezed,}) {
  return _then(_Crew(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,knownFordepartment: freezed == knownFordepartment ? _self.knownFordepartment : knownFordepartment // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,creditId: freezed == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,job: freezed == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
