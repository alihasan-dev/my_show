// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EpisodeDetailsModel {

 int? get id;@JsonKey(name: 'air_date') String? get airDate; List<Crew>? get crew;@JsonKey(name: 'episode_number') int? get episodeNumber;@JsonKey(name: 'episode_type') String? get episodeType;@JsonKey(name: 'guest_stars') List<GuestStar>? get guestStars; String? get name; String? get overview;@JsonKey(name: 'production_code') String? get productionCode; int? get runtime;@JsonKey(name: 'season_number') int? get seasonNumber;@JsonKey(name: 'still_path') String? get stillPath;@JsonKey(name: 'vote_average') double? get voteAverage;@JsonKey(name: 'vote_count') int? get voteCount;
/// Create a copy of EpisodeDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeDetailsModelCopyWith<EpisodeDetailsModel> get copyWith => _$EpisodeDetailsModelCopyWithImpl<EpisodeDetailsModel>(this as EpisodeDetailsModel, _$identity);

  /// Serializes this EpisodeDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EpisodeDetailsModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpisodeDetailsModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.airDate, _this.airDate) || other.airDate == _this.airDate)&&const DeepCollectionEquality().equals(other.crew, _this.crew)&&(identical(other.episodeNumber, _this.episodeNumber) || other.episodeNumber == _this.episodeNumber)&&(identical(other.episodeType, _this.episodeType) || other.episodeType == _this.episodeType)&&const DeepCollectionEquality().equals(other.guestStars, _this.guestStars)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.overview, _this.overview) || other.overview == _this.overview)&&(identical(other.productionCode, _this.productionCode) || other.productionCode == _this.productionCode)&&(identical(other.runtime, _this.runtime) || other.runtime == _this.runtime)&&(identical(other.seasonNumber, _this.seasonNumber) || other.seasonNumber == _this.seasonNumber)&&(identical(other.stillPath, _this.stillPath) || other.stillPath == _this.stillPath)&&(identical(other.voteAverage, _this.voteAverage) || other.voteAverage == _this.voteAverage)&&(identical(other.voteCount, _this.voteCount) || other.voteCount == _this.voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EpisodeDetailsModel;
  return Object.hash(runtimeType,_this.id,_this.airDate,const DeepCollectionEquality().hash(_this.crew),_this.episodeNumber,_this.episodeType,const DeepCollectionEquality().hash(_this.guestStars),_this.name,_this.overview,_this.productionCode,_this.runtime,_this.seasonNumber,_this.stillPath,_this.voteAverage,_this.voteCount);
}

@override
String toString() {
  final _this = this as EpisodeDetailsModel;
  return 'EpisodeDetailsModel(id: ${_this.id}, airDate: ${_this.airDate}, crew: ${_this.crew}, episodeNumber: ${_this.episodeNumber}, episodeType: ${_this.episodeType}, guestStars: ${_this.guestStars}, name: ${_this.name}, overview: ${_this.overview}, productionCode: ${_this.productionCode}, runtime: ${_this.runtime}, seasonNumber: ${_this.seasonNumber}, stillPath: ${_this.stillPath}, voteAverage: ${_this.voteAverage}, voteCount: ${_this.voteCount})';
}


}

/// @nodoc
abstract mixin class $EpisodeDetailsModelCopyWith<$Res>  {
  factory $EpisodeDetailsModelCopyWith(EpisodeDetailsModel value, $Res Function(EpisodeDetailsModel) _then) = _$EpisodeDetailsModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'air_date') String? airDate, List<Crew>? crew,@JsonKey(name: 'episode_number') int? episodeNumber,@JsonKey(name: 'episode_type') String? episodeType,@JsonKey(name: 'guest_stars') List<GuestStar>? guestStars, String? name, String? overview,@JsonKey(name: 'production_code') String? productionCode, int? runtime,@JsonKey(name: 'season_number') int? seasonNumber,@JsonKey(name: 'still_path') String? stillPath,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount
});




}
/// @nodoc
class _$EpisodeDetailsModelCopyWithImpl<$Res>
    implements $EpisodeDetailsModelCopyWith<$Res> {
  _$EpisodeDetailsModelCopyWithImpl(this._self, this._then);

  final EpisodeDetailsModel _self;
  final $Res Function(EpisodeDetailsModel) _then;

/// Create a copy of EpisodeDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? airDate = freezed,Object? crew = freezed,Object? episodeNumber = freezed,Object? episodeType = freezed,Object? guestStars = freezed,Object? name = freezed,Object? overview = freezed,Object? productionCode = freezed,Object? runtime = freezed,Object? seasonNumber = freezed,Object? stillPath = freezed,Object? voteAverage = freezed,Object? voteCount = freezed,}) {
  return _then(EpisodeDetailsModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,airDate: freezed == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String?,crew: freezed == crew ? _self.crew : crew // ignore: cast_nullable_to_non_nullable
as List<Crew>?,episodeNumber: freezed == episodeNumber ? _self.episodeNumber : episodeNumber // ignore: cast_nullable_to_non_nullable
as int?,episodeType: freezed == episodeType ? _self.episodeType : episodeType // ignore: cast_nullable_to_non_nullable
as String?,guestStars: freezed == guestStars ? _self.guestStars : guestStars // ignore: cast_nullable_to_non_nullable
as List<GuestStar>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,productionCode: freezed == productionCode ? _self.productionCode : productionCode // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,seasonNumber: freezed == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int?,stillPath: freezed == stillPath ? _self.stillPath : stillPath // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [EpisodeDetailsModel].
extension EpisodeDetailsModelPatterns on EpisodeDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EpisodeDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EpisodeDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EpisodeDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _EpisodeDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EpisodeDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _EpisodeDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'air_date')  String? airDate,  List<Crew>? crew, @JsonKey(name: 'episode_number')  int? episodeNumber, @JsonKey(name: 'episode_type')  String? episodeType, @JsonKey(name: 'guest_stars')  List<GuestStar>? guestStars,  String? name,  String? overview, @JsonKey(name: 'production_code')  String? productionCode,  int? runtime, @JsonKey(name: 'season_number')  int? seasonNumber, @JsonKey(name: 'still_path')  String? stillPath, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EpisodeDetailsModel() when $default != null:
return $default(_that.id,_that.airDate,_that.crew,_that.episodeNumber,_that.episodeType,_that.guestStars,_that.name,_that.overview,_that.productionCode,_that.runtime,_that.seasonNumber,_that.stillPath,_that.voteAverage,_that.voteCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'air_date')  String? airDate,  List<Crew>? crew, @JsonKey(name: 'episode_number')  int? episodeNumber, @JsonKey(name: 'episode_type')  String? episodeType, @JsonKey(name: 'guest_stars')  List<GuestStar>? guestStars,  String? name,  String? overview, @JsonKey(name: 'production_code')  String? productionCode,  int? runtime, @JsonKey(name: 'season_number')  int? seasonNumber, @JsonKey(name: 'still_path')  String? stillPath, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount)  $default,) {final _that = this;
switch (_that) {
case _EpisodeDetailsModel():
return $default(_that.id,_that.airDate,_that.crew,_that.episodeNumber,_that.episodeType,_that.guestStars,_that.name,_that.overview,_that.productionCode,_that.runtime,_that.seasonNumber,_that.stillPath,_that.voteAverage,_that.voteCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'air_date')  String? airDate,  List<Crew>? crew, @JsonKey(name: 'episode_number')  int? episodeNumber, @JsonKey(name: 'episode_type')  String? episodeType, @JsonKey(name: 'guest_stars')  List<GuestStar>? guestStars,  String? name,  String? overview, @JsonKey(name: 'production_code')  String? productionCode,  int? runtime, @JsonKey(name: 'season_number')  int? seasonNumber, @JsonKey(name: 'still_path')  String? stillPath, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount)?  $default,) {final _that = this;
switch (_that) {
case _EpisodeDetailsModel() when $default != null:
return $default(_that.id,_that.airDate,_that.crew,_that.episodeNumber,_that.episodeType,_that.guestStars,_that.name,_that.overview,_that.productionCode,_that.runtime,_that.seasonNumber,_that.stillPath,_that.voteAverage,_that.voteCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EpisodeDetailsModel implements EpisodeDetailsModel {
  const _EpisodeDetailsModel({this.id, @JsonKey(name: 'air_date') this.airDate,  List<Crew>? crew, @JsonKey(name: 'episode_number') this.episodeNumber, @JsonKey(name: 'episode_type') this.episodeType, @JsonKey(name: 'guest_stars')  List<GuestStar>? guestStars, this.name, this.overview, @JsonKey(name: 'production_code') this.productionCode, this.runtime, @JsonKey(name: 'season_number') this.seasonNumber, @JsonKey(name: 'still_path') this.stillPath, @JsonKey(name: 'vote_average') this.voteAverage, @JsonKey(name: 'vote_count') this.voteCount}): _crew = crew,_guestStars = guestStars;
  factory _EpisodeDetailsModel.fromJson(Map<String, dynamic> json) => _$EpisodeDetailsModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'air_date') final  String? airDate;
 final  List<Crew>? _crew;
@override List<Crew>? get crew {
  final value = _crew;
  if (value == null) return null;
  if (_crew is EqualUnmodifiableListView) return _crew;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'episode_number') final  int? episodeNumber;
@override@JsonKey(name: 'episode_type') final  String? episodeType;
 final  List<GuestStar>? _guestStars;
@override@JsonKey(name: 'guest_stars') List<GuestStar>? get guestStars {
  final value = _guestStars;
  if (value == null) return null;
  if (_guestStars is EqualUnmodifiableListView) return _guestStars;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? name;
@override final  String? overview;
@override@JsonKey(name: 'production_code') final  String? productionCode;
@override final  int? runtime;
@override@JsonKey(name: 'season_number') final  int? seasonNumber;
@override@JsonKey(name: 'still_path') final  String? stillPath;
@override@JsonKey(name: 'vote_average') final  double? voteAverage;
@override@JsonKey(name: 'vote_count') final  int? voteCount;

/// Create a copy of EpisodeDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpisodeDetailsModelCopyWith<_EpisodeDetailsModel> get copyWith => __$EpisodeDetailsModelCopyWithImpl<_EpisodeDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpisodeDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpisodeDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.airDate, airDate) || other.airDate == airDate)&&const DeepCollectionEquality().equals(other.crew, _crew)&&(identical(other.episodeNumber, episodeNumber) || other.episodeNumber == episodeNumber)&&(identical(other.episodeType, episodeType) || other.episodeType == episodeType)&&const DeepCollectionEquality().equals(other.guestStars, _guestStars)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.productionCode, productionCode) || other.productionCode == productionCode)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.seasonNumber, seasonNumber) || other.seasonNumber == seasonNumber)&&(identical(other.stillPath, stillPath) || other.stillPath == stillPath)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,airDate,const DeepCollectionEquality().hash(_crew),episodeNumber,episodeType,const DeepCollectionEquality().hash(_guestStars),name,overview,productionCode,runtime,seasonNumber,stillPath,voteAverage,voteCount);
}

@override
String toString() {
    return 'EpisodeDetailsModel(id: $id, airDate: $airDate, crew: $crew, episodeNumber: $episodeNumber, episodeType: $episodeType, guestStars: $guestStars, name: $name, overview: $overview, productionCode: $productionCode, runtime: $runtime, seasonNumber: $seasonNumber, stillPath: $stillPath, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class _$EpisodeDetailsModelCopyWith<$Res> implements $EpisodeDetailsModelCopyWith<$Res> {
  factory _$EpisodeDetailsModelCopyWith(_EpisodeDetailsModel value, $Res Function(_EpisodeDetailsModel) _then) = __$EpisodeDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'air_date') String? airDate, List<Crew>? crew,@JsonKey(name: 'episode_number') int? episodeNumber,@JsonKey(name: 'episode_type') String? episodeType,@JsonKey(name: 'guest_stars') List<GuestStar>? guestStars, String? name, String? overview,@JsonKey(name: 'production_code') String? productionCode, int? runtime,@JsonKey(name: 'season_number') int? seasonNumber,@JsonKey(name: 'still_path') String? stillPath,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount
});




}
/// @nodoc
class __$EpisodeDetailsModelCopyWithImpl<$Res>
    implements _$EpisodeDetailsModelCopyWith<$Res> {
  __$EpisodeDetailsModelCopyWithImpl(this._self, this._then);

  final _EpisodeDetailsModel _self;
  final $Res Function(_EpisodeDetailsModel) _then;

/// Create a copy of EpisodeDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? airDate = freezed,Object? crew = freezed,Object? episodeNumber = freezed,Object? episodeType = freezed,Object? guestStars = freezed,Object? name = freezed,Object? overview = freezed,Object? productionCode = freezed,Object? runtime = freezed,Object? seasonNumber = freezed,Object? stillPath = freezed,Object? voteAverage = freezed,Object? voteCount = freezed,}) {
  return _then(_EpisodeDetailsModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,airDate: freezed == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String?,crew: freezed == crew ? _self._crew : crew // ignore: cast_nullable_to_non_nullable
as List<Crew>?,episodeNumber: freezed == episodeNumber ? _self.episodeNumber : episodeNumber // ignore: cast_nullable_to_non_nullable
as int?,episodeType: freezed == episodeType ? _self.episodeType : episodeType // ignore: cast_nullable_to_non_nullable
as String?,guestStars: freezed == guestStars ? _self._guestStars : guestStars // ignore: cast_nullable_to_non_nullable
as List<GuestStar>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,productionCode: freezed == productionCode ? _self.productionCode : productionCode // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,seasonNumber: freezed == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int?,stillPath: freezed == stillPath ? _self.stillPath : stillPath // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
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
  final _this = this as Crew;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Crew&&(identical(other.adult, _this.adult) || other.adult == _this.adult)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.knownFordepartment, _this.knownFordepartment) || other.knownFordepartment == _this.knownFordepartment)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.originalName, _this.originalName) || other.originalName == _this.originalName)&&(identical(other.popularity, _this.popularity) || other.popularity == _this.popularity)&&(identical(other.profilePath, _this.profilePath) || other.profilePath == _this.profilePath)&&(identical(other.creditId, _this.creditId) || other.creditId == _this.creditId)&&(identical(other.department, _this.department) || other.department == _this.department)&&(identical(other.job, _this.job) || other.job == _this.job));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Crew;
  return Object.hash(runtimeType,_this.adult,_this.gender,_this.id,_this.knownFordepartment,_this.name,_this.originalName,_this.popularity,_this.profilePath,_this.creditId,_this.department,_this.job);
}

@override
String toString() {
  final _this = this as Crew;
  return 'Crew(adult: ${_this.adult}, gender: ${_this.gender}, id: ${_this.id}, knownFordepartment: ${_this.knownFordepartment}, name: ${_this.name}, originalName: ${_this.originalName}, popularity: ${_this.popularity}, profilePath: ${_this.profilePath}, creditId: ${_this.creditId}, department: ${_this.department}, job: ${_this.job})';
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
  return _then(Crew(
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
int get hashCode {
    return Object.hash(runtimeType,adult,gender,id,knownFordepartment,name,originalName,popularity,profilePath,creditId,department,job);
}

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


/// @nodoc
mixin _$GuestStar {

 bool? get adult; int? get gender; int? get id; int? get order;@JsonKey(name: 'known_for_department') String? get knownFordepartment; String? get name;@JsonKey(name: 'original_name') String? get originalName; double? get popularity;@JsonKey(name: 'profile_path') String? get profilePath;@JsonKey(name: 'credit_id') String? get creditId; String? get character;
/// Create a copy of GuestStar
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuestStarCopyWith<GuestStar> get copyWith => _$GuestStarCopyWithImpl<GuestStar>(this as GuestStar, _$identity);

  /// Serializes this GuestStar to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GuestStar;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuestStar&&(identical(other.adult, _this.adult) || other.adult == _this.adult)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.order, _this.order) || other.order == _this.order)&&(identical(other.knownFordepartment, _this.knownFordepartment) || other.knownFordepartment == _this.knownFordepartment)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.originalName, _this.originalName) || other.originalName == _this.originalName)&&(identical(other.popularity, _this.popularity) || other.popularity == _this.popularity)&&(identical(other.profilePath, _this.profilePath) || other.profilePath == _this.profilePath)&&(identical(other.creditId, _this.creditId) || other.creditId == _this.creditId)&&(identical(other.character, _this.character) || other.character == _this.character));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GuestStar;
  return Object.hash(runtimeType,_this.adult,_this.gender,_this.id,_this.order,_this.knownFordepartment,_this.name,_this.originalName,_this.popularity,_this.profilePath,_this.creditId,_this.character);
}

@override
String toString() {
  final _this = this as GuestStar;
  return 'GuestStar(adult: ${_this.adult}, gender: ${_this.gender}, id: ${_this.id}, order: ${_this.order}, knownFordepartment: ${_this.knownFordepartment}, name: ${_this.name}, originalName: ${_this.originalName}, popularity: ${_this.popularity}, profilePath: ${_this.profilePath}, creditId: ${_this.creditId}, character: ${_this.character})';
}


}

/// @nodoc
abstract mixin class $GuestStarCopyWith<$Res>  {
  factory $GuestStarCopyWith(GuestStar value, $Res Function(GuestStar) _then) = _$GuestStarCopyWithImpl;
@useResult
$Res call({
 bool? adult, int? gender, int? id, int? order,@JsonKey(name: 'known_for_department') String? knownFordepartment, String? name,@JsonKey(name: 'original_name') String? originalName, double? popularity,@JsonKey(name: 'profile_path') String? profilePath,@JsonKey(name: 'credit_id') String? creditId, String? character
});




}
/// @nodoc
class _$GuestStarCopyWithImpl<$Res>
    implements $GuestStarCopyWith<$Res> {
  _$GuestStarCopyWithImpl(this._self, this._then);

  final GuestStar _self;
  final $Res Function(GuestStar) _then;

/// Create a copy of GuestStar
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = freezed,Object? gender = freezed,Object? id = freezed,Object? order = freezed,Object? knownFordepartment = freezed,Object? name = freezed,Object? originalName = freezed,Object? popularity = freezed,Object? profilePath = freezed,Object? creditId = freezed,Object? character = freezed,}) {
  return _then(GuestStar(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,knownFordepartment: freezed == knownFordepartment ? _self.knownFordepartment : knownFordepartment // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,creditId: freezed == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String?,character: freezed == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GuestStar].
extension GuestStarPatterns on GuestStar {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GuestStar value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GuestStar() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GuestStar value)  $default,){
final _that = this;
switch (_that) {
case _GuestStar():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GuestStar value)?  $default,){
final _that = this;
switch (_that) {
case _GuestStar() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? adult,  int? gender,  int? id,  int? order, @JsonKey(name: 'known_for_department')  String? knownFordepartment,  String? name, @JsonKey(name: 'original_name')  String? originalName,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath, @JsonKey(name: 'credit_id')  String? creditId,  String? character)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuestStar() when $default != null:
return $default(_that.adult,_that.gender,_that.id,_that.order,_that.knownFordepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.creditId,_that.character);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? adult,  int? gender,  int? id,  int? order, @JsonKey(name: 'known_for_department')  String? knownFordepartment,  String? name, @JsonKey(name: 'original_name')  String? originalName,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath, @JsonKey(name: 'credit_id')  String? creditId,  String? character)  $default,) {final _that = this;
switch (_that) {
case _GuestStar():
return $default(_that.adult,_that.gender,_that.id,_that.order,_that.knownFordepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.creditId,_that.character);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? adult,  int? gender,  int? id,  int? order, @JsonKey(name: 'known_for_department')  String? knownFordepartment,  String? name, @JsonKey(name: 'original_name')  String? originalName,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath, @JsonKey(name: 'credit_id')  String? creditId,  String? character)?  $default,) {final _that = this;
switch (_that) {
case _GuestStar() when $default != null:
return $default(_that.adult,_that.gender,_that.id,_that.order,_that.knownFordepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.creditId,_that.character);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GuestStar implements GuestStar {
  const _GuestStar({this.adult, this.gender, this.id, this.order, @JsonKey(name: 'known_for_department') this.knownFordepartment, this.name, @JsonKey(name: 'original_name') this.originalName, this.popularity, @JsonKey(name: 'profile_path') this.profilePath, @JsonKey(name: 'credit_id') this.creditId, this.character});
  factory _GuestStar.fromJson(Map<String, dynamic> json) => _$GuestStarFromJson(json);

@override final  bool? adult;
@override final  int? gender;
@override final  int? id;
@override final  int? order;
@override@JsonKey(name: 'known_for_department') final  String? knownFordepartment;
@override final  String? name;
@override@JsonKey(name: 'original_name') final  String? originalName;
@override final  double? popularity;
@override@JsonKey(name: 'profile_path') final  String? profilePath;
@override@JsonKey(name: 'credit_id') final  String? creditId;
@override final  String? character;

/// Create a copy of GuestStar
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuestStarCopyWith<_GuestStar> get copyWith => __$GuestStarCopyWithImpl<_GuestStar>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GuestStarToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuestStar&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.id, id) || other.id == id)&&(identical(other.order, order) || other.order == order)&&(identical(other.knownFordepartment, knownFordepartment) || other.knownFordepartment == knownFordepartment)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath)&&(identical(other.creditId, creditId) || other.creditId == creditId)&&(identical(other.character, character) || other.character == character));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,adult,gender,id,order,knownFordepartment,name,originalName,popularity,profilePath,creditId,character);
}

@override
String toString() {
    return 'GuestStar(adult: $adult, gender: $gender, id: $id, order: $order, knownFordepartment: $knownFordepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, creditId: $creditId, character: $character)';
}


}

/// @nodoc
abstract mixin class _$GuestStarCopyWith<$Res> implements $GuestStarCopyWith<$Res> {
  factory _$GuestStarCopyWith(_GuestStar value, $Res Function(_GuestStar) _then) = __$GuestStarCopyWithImpl;
@override @useResult
$Res call({
 bool? adult, int? gender, int? id, int? order,@JsonKey(name: 'known_for_department') String? knownFordepartment, String? name,@JsonKey(name: 'original_name') String? originalName, double? popularity,@JsonKey(name: 'profile_path') String? profilePath,@JsonKey(name: 'credit_id') String? creditId, String? character
});




}
/// @nodoc
class __$GuestStarCopyWithImpl<$Res>
    implements _$GuestStarCopyWith<$Res> {
  __$GuestStarCopyWithImpl(this._self, this._then);

  final _GuestStar _self;
  final $Res Function(_GuestStar) _then;

/// Create a copy of GuestStar
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = freezed,Object? gender = freezed,Object? id = freezed,Object? order = freezed,Object? knownFordepartment = freezed,Object? name = freezed,Object? originalName = freezed,Object? popularity = freezed,Object? profilePath = freezed,Object? creditId = freezed,Object? character = freezed,}) {
  return _then(_GuestStar(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,knownFordepartment: freezed == knownFordepartment ? _self.knownFordepartment : knownFordepartment // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,creditId: freezed == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String?,character: freezed == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
