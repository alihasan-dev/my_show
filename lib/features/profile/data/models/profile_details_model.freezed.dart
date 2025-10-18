// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileDetailsModel {

 bool? get adult;@JsonKey(name: 'also_known_as') List<String>? get knownFor; String? get biography; String? get birthday; String? get deathday; int? get gender; String? get homepage; int? get id;@JsonKey(name: 'imdb_id') String? get imdbId;@JsonKey(name: 'known_for_department') String? get knownForDepartment; String? get name;@JsonKey(name: 'place_of_birth') String? get birthPlace; double? get popularity;@JsonKey(name: 'profile_path') String? get profilePath;
/// Create a copy of ProfileDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileDetailsModelCopyWith<ProfileDetailsModel> get copyWith => _$ProfileDetailsModelCopyWithImpl<ProfileDetailsModel>(this as ProfileDetailsModel, _$identity);

  /// Serializes this ProfileDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDetailsModel&&(identical(other.adult, adult) || other.adult == adult)&&const DeepCollectionEquality().equals(other.knownFor, knownFor)&&(identical(other.biography, biography) || other.biography == biography)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.deathday, deathday) || other.deathday == deathday)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.id, id) || other.id == id)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&(identical(other.knownForDepartment, knownForDepartment) || other.knownForDepartment == knownForDepartment)&&(identical(other.name, name) || other.name == name)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,const DeepCollectionEquality().hash(knownFor),biography,birthday,deathday,gender,homepage,id,imdbId,knownForDepartment,name,birthPlace,popularity,profilePath);

@override
String toString() {
  return 'ProfileDetailsModel(adult: $adult, knownFor: $knownFor, biography: $biography, birthday: $birthday, deathday: $deathday, gender: $gender, homepage: $homepage, id: $id, imdbId: $imdbId, knownForDepartment: $knownForDepartment, name: $name, birthPlace: $birthPlace, popularity: $popularity, profilePath: $profilePath)';
}


}

/// @nodoc
abstract mixin class $ProfileDetailsModelCopyWith<$Res>  {
  factory $ProfileDetailsModelCopyWith(ProfileDetailsModel value, $Res Function(ProfileDetailsModel) _then) = _$ProfileDetailsModelCopyWithImpl;
@useResult
$Res call({
 bool? adult,@JsonKey(name: 'also_known_as') List<String>? knownFor, String? biography, String? birthday, String? deathday, int? gender, String? homepage, int? id,@JsonKey(name: 'imdb_id') String? imdbId,@JsonKey(name: 'known_for_department') String? knownForDepartment, String? name,@JsonKey(name: 'place_of_birth') String? birthPlace, double? popularity,@JsonKey(name: 'profile_path') String? profilePath
});




}
/// @nodoc
class _$ProfileDetailsModelCopyWithImpl<$Res>
    implements $ProfileDetailsModelCopyWith<$Res> {
  _$ProfileDetailsModelCopyWithImpl(this._self, this._then);

  final ProfileDetailsModel _self;
  final $Res Function(ProfileDetailsModel) _then;

/// Create a copy of ProfileDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = freezed,Object? knownFor = freezed,Object? biography = freezed,Object? birthday = freezed,Object? deathday = freezed,Object? gender = freezed,Object? homepage = freezed,Object? id = freezed,Object? imdbId = freezed,Object? knownForDepartment = freezed,Object? name = freezed,Object? birthPlace = freezed,Object? popularity = freezed,Object? profilePath = freezed,}) {
  return _then(_self.copyWith(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,knownFor: freezed == knownFor ? _self.knownFor : knownFor // ignore: cast_nullable_to_non_nullable
as List<String>?,biography: freezed == biography ? _self.biography : biography // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String?,deathday: freezed == deathday ? _self.deathday : deathday // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,knownForDepartment: freezed == knownForDepartment ? _self.knownForDepartment : knownForDepartment // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,birthPlace: freezed == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileDetailsModel].
extension ProfileDetailsModelPatterns on ProfileDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? adult, @JsonKey(name: 'also_known_as')  List<String>? knownFor,  String? biography,  String? birthday,  String? deathday,  int? gender,  String? homepage,  int? id, @JsonKey(name: 'imdb_id')  String? imdbId, @JsonKey(name: 'known_for_department')  String? knownForDepartment,  String? name, @JsonKey(name: 'place_of_birth')  String? birthPlace,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileDetailsModel() when $default != null:
return $default(_that.adult,_that.knownFor,_that.biography,_that.birthday,_that.deathday,_that.gender,_that.homepage,_that.id,_that.imdbId,_that.knownForDepartment,_that.name,_that.birthPlace,_that.popularity,_that.profilePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? adult, @JsonKey(name: 'also_known_as')  List<String>? knownFor,  String? biography,  String? birthday,  String? deathday,  int? gender,  String? homepage,  int? id, @JsonKey(name: 'imdb_id')  String? imdbId, @JsonKey(name: 'known_for_department')  String? knownForDepartment,  String? name, @JsonKey(name: 'place_of_birth')  String? birthPlace,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath)  $default,) {final _that = this;
switch (_that) {
case _ProfileDetailsModel():
return $default(_that.adult,_that.knownFor,_that.biography,_that.birthday,_that.deathday,_that.gender,_that.homepage,_that.id,_that.imdbId,_that.knownForDepartment,_that.name,_that.birthPlace,_that.popularity,_that.profilePath);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? adult, @JsonKey(name: 'also_known_as')  List<String>? knownFor,  String? biography,  String? birthday,  String? deathday,  int? gender,  String? homepage,  int? id, @JsonKey(name: 'imdb_id')  String? imdbId, @JsonKey(name: 'known_for_department')  String? knownForDepartment,  String? name, @JsonKey(name: 'place_of_birth')  String? birthPlace,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath)?  $default,) {final _that = this;
switch (_that) {
case _ProfileDetailsModel() when $default != null:
return $default(_that.adult,_that.knownFor,_that.biography,_that.birthday,_that.deathday,_that.gender,_that.homepage,_that.id,_that.imdbId,_that.knownForDepartment,_that.name,_that.birthPlace,_that.popularity,_that.profilePath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileDetailsModel implements ProfileDetailsModel {
  const _ProfileDetailsModel({this.adult, @JsonKey(name: 'also_known_as') final  List<String>? knownFor, this.biography, this.birthday, this.deathday, this.gender, this.homepage, this.id, @JsonKey(name: 'imdb_id') this.imdbId, @JsonKey(name: 'known_for_department') this.knownForDepartment, this.name, @JsonKey(name: 'place_of_birth') this.birthPlace, this.popularity, @JsonKey(name: 'profile_path') this.profilePath}): _knownFor = knownFor;
  factory _ProfileDetailsModel.fromJson(Map<String, dynamic> json) => _$ProfileDetailsModelFromJson(json);

@override final  bool? adult;
 final  List<String>? _knownFor;
@override@JsonKey(name: 'also_known_as') List<String>? get knownFor {
  final value = _knownFor;
  if (value == null) return null;
  if (_knownFor is EqualUnmodifiableListView) return _knownFor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? biography;
@override final  String? birthday;
@override final  String? deathday;
@override final  int? gender;
@override final  String? homepage;
@override final  int? id;
@override@JsonKey(name: 'imdb_id') final  String? imdbId;
@override@JsonKey(name: 'known_for_department') final  String? knownForDepartment;
@override final  String? name;
@override@JsonKey(name: 'place_of_birth') final  String? birthPlace;
@override final  double? popularity;
@override@JsonKey(name: 'profile_path') final  String? profilePath;

/// Create a copy of ProfileDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDetailsModelCopyWith<_ProfileDetailsModel> get copyWith => __$ProfileDetailsModelCopyWithImpl<_ProfileDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileDetailsModel&&(identical(other.adult, adult) || other.adult == adult)&&const DeepCollectionEquality().equals(other._knownFor, _knownFor)&&(identical(other.biography, biography) || other.biography == biography)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.deathday, deathday) || other.deathday == deathday)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.id, id) || other.id == id)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&(identical(other.knownForDepartment, knownForDepartment) || other.knownForDepartment == knownForDepartment)&&(identical(other.name, name) || other.name == name)&&(identical(other.birthPlace, birthPlace) || other.birthPlace == birthPlace)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,const DeepCollectionEquality().hash(_knownFor),biography,birthday,deathday,gender,homepage,id,imdbId,knownForDepartment,name,birthPlace,popularity,profilePath);

@override
String toString() {
  return 'ProfileDetailsModel(adult: $adult, knownFor: $knownFor, biography: $biography, birthday: $birthday, deathday: $deathday, gender: $gender, homepage: $homepage, id: $id, imdbId: $imdbId, knownForDepartment: $knownForDepartment, name: $name, birthPlace: $birthPlace, popularity: $popularity, profilePath: $profilePath)';
}


}

/// @nodoc
abstract mixin class _$ProfileDetailsModelCopyWith<$Res> implements $ProfileDetailsModelCopyWith<$Res> {
  factory _$ProfileDetailsModelCopyWith(_ProfileDetailsModel value, $Res Function(_ProfileDetailsModel) _then) = __$ProfileDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 bool? adult,@JsonKey(name: 'also_known_as') List<String>? knownFor, String? biography, String? birthday, String? deathday, int? gender, String? homepage, int? id,@JsonKey(name: 'imdb_id') String? imdbId,@JsonKey(name: 'known_for_department') String? knownForDepartment, String? name,@JsonKey(name: 'place_of_birth') String? birthPlace, double? popularity,@JsonKey(name: 'profile_path') String? profilePath
});




}
/// @nodoc
class __$ProfileDetailsModelCopyWithImpl<$Res>
    implements _$ProfileDetailsModelCopyWith<$Res> {
  __$ProfileDetailsModelCopyWithImpl(this._self, this._then);

  final _ProfileDetailsModel _self;
  final $Res Function(_ProfileDetailsModel) _then;

/// Create a copy of ProfileDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = freezed,Object? knownFor = freezed,Object? biography = freezed,Object? birthday = freezed,Object? deathday = freezed,Object? gender = freezed,Object? homepage = freezed,Object? id = freezed,Object? imdbId = freezed,Object? knownForDepartment = freezed,Object? name = freezed,Object? birthPlace = freezed,Object? popularity = freezed,Object? profilePath = freezed,}) {
  return _then(_ProfileDetailsModel(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,knownFor: freezed == knownFor ? _self._knownFor : knownFor // ignore: cast_nullable_to_non_nullable
as List<String>?,biography: freezed == biography ? _self.biography : biography // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String?,deathday: freezed == deathday ? _self.deathday : deathday // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,knownForDepartment: freezed == knownForDepartment ? _self.knownForDepartment : knownForDepartment // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,birthPlace: freezed == birthPlace ? _self.birthPlace : birthPlace // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
