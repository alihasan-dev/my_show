// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SeasonDetailsModel {

 int? get id;@JsonKey(name: '_id') String? get hashId;@JsonKey(name: 'air_date') String? get airDate; List<Episode>? get episodes; String? get name; List<Network>? get networks; String? get overview;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'season_number') int? get seasonNumber;@JsonKey(name: 'vote_average') double? get voteAverage;
/// Create a copy of SeasonDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeasonDetailsModelCopyWith<SeasonDetailsModel> get copyWith => _$SeasonDetailsModelCopyWithImpl<SeasonDetailsModel>(this as SeasonDetailsModel, _$identity);

  /// Serializes this SeasonDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SeasonDetailsModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeasonDetailsModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.hashId, _this.hashId) || other.hashId == _this.hashId)&&(identical(other.airDate, _this.airDate) || other.airDate == _this.airDate)&&const DeepCollectionEquality().equals(other.episodes, _this.episodes)&&(identical(other.name, _this.name) || other.name == _this.name)&&const DeepCollectionEquality().equals(other.networks, _this.networks)&&(identical(other.overview, _this.overview) || other.overview == _this.overview)&&(identical(other.posterPath, _this.posterPath) || other.posterPath == _this.posterPath)&&(identical(other.seasonNumber, _this.seasonNumber) || other.seasonNumber == _this.seasonNumber)&&(identical(other.voteAverage, _this.voteAverage) || other.voteAverage == _this.voteAverage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SeasonDetailsModel;
  return Object.hash(runtimeType,_this.id,_this.hashId,_this.airDate,const DeepCollectionEquality().hash(_this.episodes),_this.name,const DeepCollectionEquality().hash(_this.networks),_this.overview,_this.posterPath,_this.seasonNumber,_this.voteAverage);
}

@override
String toString() {
  final _this = this as SeasonDetailsModel;
  return 'SeasonDetailsModel(id: ${_this.id}, hashId: ${_this.hashId}, airDate: ${_this.airDate}, episodes: ${_this.episodes}, name: ${_this.name}, networks: ${_this.networks}, overview: ${_this.overview}, posterPath: ${_this.posterPath}, seasonNumber: ${_this.seasonNumber}, voteAverage: ${_this.voteAverage})';
}


}

/// @nodoc
abstract mixin class $SeasonDetailsModelCopyWith<$Res>  {
  factory $SeasonDetailsModelCopyWith(SeasonDetailsModel value, $Res Function(SeasonDetailsModel) _then) = _$SeasonDetailsModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: '_id') String? hashId,@JsonKey(name: 'air_date') String? airDate, List<Episode>? episodes, String? name, List<Network>? networks, String? overview,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'season_number') int? seasonNumber,@JsonKey(name: 'vote_average') double? voteAverage
});




}
/// @nodoc
class _$SeasonDetailsModelCopyWithImpl<$Res>
    implements $SeasonDetailsModelCopyWith<$Res> {
  _$SeasonDetailsModelCopyWithImpl(this._self, this._then);

  final SeasonDetailsModel _self;
  final $Res Function(SeasonDetailsModel) _then;

/// Create a copy of SeasonDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? hashId = freezed,Object? airDate = freezed,Object? episodes = freezed,Object? name = freezed,Object? networks = freezed,Object? overview = freezed,Object? posterPath = freezed,Object? seasonNumber = freezed,Object? voteAverage = freezed,}) {
  return _then(SeasonDetailsModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,hashId: freezed == hashId ? _self.hashId : hashId // ignore: cast_nullable_to_non_nullable
as String?,airDate: freezed == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String?,episodes: freezed == episodes ? _self.episodes : episodes // ignore: cast_nullable_to_non_nullable
as List<Episode>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,networks: freezed == networks ? _self.networks : networks // ignore: cast_nullable_to_non_nullable
as List<Network>?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,seasonNumber: freezed == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [SeasonDetailsModel].
extension SeasonDetailsModelPatterns on SeasonDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeasonDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeasonDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeasonDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _SeasonDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeasonDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _SeasonDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: '_id')  String? hashId, @JsonKey(name: 'air_date')  String? airDate,  List<Episode>? episodes,  String? name,  List<Network>? networks,  String? overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'season_number')  int? seasonNumber, @JsonKey(name: 'vote_average')  double? voteAverage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeasonDetailsModel() when $default != null:
return $default(_that.id,_that.hashId,_that.airDate,_that.episodes,_that.name,_that.networks,_that.overview,_that.posterPath,_that.seasonNumber,_that.voteAverage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: '_id')  String? hashId, @JsonKey(name: 'air_date')  String? airDate,  List<Episode>? episodes,  String? name,  List<Network>? networks,  String? overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'season_number')  int? seasonNumber, @JsonKey(name: 'vote_average')  double? voteAverage)  $default,) {final _that = this;
switch (_that) {
case _SeasonDetailsModel():
return $default(_that.id,_that.hashId,_that.airDate,_that.episodes,_that.name,_that.networks,_that.overview,_that.posterPath,_that.seasonNumber,_that.voteAverage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: '_id')  String? hashId, @JsonKey(name: 'air_date')  String? airDate,  List<Episode>? episodes,  String? name,  List<Network>? networks,  String? overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'season_number')  int? seasonNumber, @JsonKey(name: 'vote_average')  double? voteAverage)?  $default,) {final _that = this;
switch (_that) {
case _SeasonDetailsModel() when $default != null:
return $default(_that.id,_that.hashId,_that.airDate,_that.episodes,_that.name,_that.networks,_that.overview,_that.posterPath,_that.seasonNumber,_that.voteAverage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeasonDetailsModel implements SeasonDetailsModel {
  const _SeasonDetailsModel({this.id, @JsonKey(name: '_id') this.hashId, @JsonKey(name: 'air_date') this.airDate,  List<Episode>? episodes, this.name,  List<Network>? networks, this.overview, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'season_number') this.seasonNumber, @JsonKey(name: 'vote_average') this.voteAverage}): _episodes = episodes,_networks = networks;
  factory _SeasonDetailsModel.fromJson(Map<String, dynamic> json) => _$SeasonDetailsModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: '_id') final  String? hashId;
@override@JsonKey(name: 'air_date') final  String? airDate;
 final  List<Episode>? _episodes;
@override List<Episode>? get episodes {
  final value = _episodes;
  if (value == null) return null;
  if (_episodes is EqualUnmodifiableListView) return _episodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? name;
 final  List<Network>? _networks;
@override List<Network>? get networks {
  final value = _networks;
  if (value == null) return null;
  if (_networks is EqualUnmodifiableListView) return _networks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? overview;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'season_number') final  int? seasonNumber;
@override@JsonKey(name: 'vote_average') final  double? voteAverage;

/// Create a copy of SeasonDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeasonDetailsModelCopyWith<_SeasonDetailsModel> get copyWith => __$SeasonDetailsModelCopyWithImpl<_SeasonDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeasonDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeasonDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.hashId, hashId) || other.hashId == hashId)&&(identical(other.airDate, airDate) || other.airDate == airDate)&&const DeepCollectionEquality().equals(other.episodes, _episodes)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.networks, _networks)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.seasonNumber, seasonNumber) || other.seasonNumber == seasonNumber)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,hashId,airDate,const DeepCollectionEquality().hash(_episodes),name,const DeepCollectionEquality().hash(_networks),overview,posterPath,seasonNumber,voteAverage);
}

@override
String toString() {
    return 'SeasonDetailsModel(id: $id, hashId: $hashId, airDate: $airDate, episodes: $episodes, name: $name, networks: $networks, overview: $overview, posterPath: $posterPath, seasonNumber: $seasonNumber, voteAverage: $voteAverage)';
}


}

/// @nodoc
abstract mixin class _$SeasonDetailsModelCopyWith<$Res> implements $SeasonDetailsModelCopyWith<$Res> {
  factory _$SeasonDetailsModelCopyWith(_SeasonDetailsModel value, $Res Function(_SeasonDetailsModel) _then) = __$SeasonDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: '_id') String? hashId,@JsonKey(name: 'air_date') String? airDate, List<Episode>? episodes, String? name, List<Network>? networks, String? overview,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'season_number') int? seasonNumber,@JsonKey(name: 'vote_average') double? voteAverage
});




}
/// @nodoc
class __$SeasonDetailsModelCopyWithImpl<$Res>
    implements _$SeasonDetailsModelCopyWith<$Res> {
  __$SeasonDetailsModelCopyWithImpl(this._self, this._then);

  final _SeasonDetailsModel _self;
  final $Res Function(_SeasonDetailsModel) _then;

/// Create a copy of SeasonDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? hashId = freezed,Object? airDate = freezed,Object? episodes = freezed,Object? name = freezed,Object? networks = freezed,Object? overview = freezed,Object? posterPath = freezed,Object? seasonNumber = freezed,Object? voteAverage = freezed,}) {
  return _then(_SeasonDetailsModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,hashId: freezed == hashId ? _self.hashId : hashId // ignore: cast_nullable_to_non_nullable
as String?,airDate: freezed == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String?,episodes: freezed == episodes ? _self._episodes : episodes // ignore: cast_nullable_to_non_nullable
as List<Episode>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,networks: freezed == networks ? _self._networks : networks // ignore: cast_nullable_to_non_nullable
as List<Network>?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,seasonNumber: freezed == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$Episode {

@JsonKey(name: 'air_date') String? get airDate;@JsonKey(name: 'episode_number') int? get episodeNumber;@JsonKey(name: 'episode_type') String? get episodeType; int? get id; String? get name; String? get overview;@JsonKey(name: 'production_code') String? get productionCode; int? get runtime;@JsonKey(name: 'season_number') int? get seasonNumber;@JsonKey(name: 'show_id') int? get showId;@JsonKey(name: 'still_path') String? get stillPath;@JsonKey(name: 'vote_average') double? get voteAverage;@JsonKey(name: 'vote_count') int? get voteCount; List<Crew>? get crew;@JsonKey(name: 'guest_stars') List<GuestStar>? get guestStars;
/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeCopyWith<Episode> get copyWith => _$EpisodeCopyWithImpl<Episode>(this as Episode, _$identity);

  /// Serializes this Episode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Episode;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Episode&&(identical(other.airDate, _this.airDate) || other.airDate == _this.airDate)&&(identical(other.episodeNumber, _this.episodeNumber) || other.episodeNumber == _this.episodeNumber)&&(identical(other.episodeType, _this.episodeType) || other.episodeType == _this.episodeType)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.overview, _this.overview) || other.overview == _this.overview)&&(identical(other.productionCode, _this.productionCode) || other.productionCode == _this.productionCode)&&(identical(other.runtime, _this.runtime) || other.runtime == _this.runtime)&&(identical(other.seasonNumber, _this.seasonNumber) || other.seasonNumber == _this.seasonNumber)&&(identical(other.showId, _this.showId) || other.showId == _this.showId)&&(identical(other.stillPath, _this.stillPath) || other.stillPath == _this.stillPath)&&(identical(other.voteAverage, _this.voteAverage) || other.voteAverage == _this.voteAverage)&&(identical(other.voteCount, _this.voteCount) || other.voteCount == _this.voteCount)&&const DeepCollectionEquality().equals(other.crew, _this.crew)&&const DeepCollectionEquality().equals(other.guestStars, _this.guestStars));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Episode;
  return Object.hash(runtimeType,_this.airDate,_this.episodeNumber,_this.episodeType,_this.id,_this.name,_this.overview,_this.productionCode,_this.runtime,_this.seasonNumber,_this.showId,_this.stillPath,_this.voteAverage,_this.voteCount,const DeepCollectionEquality().hash(_this.crew),const DeepCollectionEquality().hash(_this.guestStars));
}

@override
String toString() {
  final _this = this as Episode;
  return 'Episode(airDate: ${_this.airDate}, episodeNumber: ${_this.episodeNumber}, episodeType: ${_this.episodeType}, id: ${_this.id}, name: ${_this.name}, overview: ${_this.overview}, productionCode: ${_this.productionCode}, runtime: ${_this.runtime}, seasonNumber: ${_this.seasonNumber}, showId: ${_this.showId}, stillPath: ${_this.stillPath}, voteAverage: ${_this.voteAverage}, voteCount: ${_this.voteCount}, crew: ${_this.crew}, guestStars: ${_this.guestStars})';
}


}

/// @nodoc
abstract mixin class $EpisodeCopyWith<$Res>  {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) _then) = _$EpisodeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'air_date') String? airDate,@JsonKey(name: 'episode_number') int? episodeNumber,@JsonKey(name: 'episode_type') String? episodeType, int? id, String? name, String? overview,@JsonKey(name: 'production_code') String? productionCode, int? runtime,@JsonKey(name: 'season_number') int? seasonNumber,@JsonKey(name: 'show_id') int? showId,@JsonKey(name: 'still_path') String? stillPath,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount, List<Crew>? crew,@JsonKey(name: 'guest_stars') List<GuestStar>? guestStars
});




}
/// @nodoc
class _$EpisodeCopyWithImpl<$Res>
    implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._self, this._then);

  final Episode _self;
  final $Res Function(Episode) _then;

/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? airDate = freezed,Object? episodeNumber = freezed,Object? episodeType = freezed,Object? id = freezed,Object? name = freezed,Object? overview = freezed,Object? productionCode = freezed,Object? runtime = freezed,Object? seasonNumber = freezed,Object? showId = freezed,Object? stillPath = freezed,Object? voteAverage = freezed,Object? voteCount = freezed,Object? crew = freezed,Object? guestStars = freezed,}) {
  return _then(Episode(
airDate: freezed == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String?,episodeNumber: freezed == episodeNumber ? _self.episodeNumber : episodeNumber // ignore: cast_nullable_to_non_nullable
as int?,episodeType: freezed == episodeType ? _self.episodeType : episodeType // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,productionCode: freezed == productionCode ? _self.productionCode : productionCode // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,seasonNumber: freezed == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int?,showId: freezed == showId ? _self.showId : showId // ignore: cast_nullable_to_non_nullable
as int?,stillPath: freezed == stillPath ? _self.stillPath : stillPath // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,crew: freezed == crew ? _self.crew : crew // ignore: cast_nullable_to_non_nullable
as List<Crew>?,guestStars: freezed == guestStars ? _self.guestStars : guestStars // ignore: cast_nullable_to_non_nullable
as List<GuestStar>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Episode].
extension EpisodePatterns on Episode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Episode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Episode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Episode value)  $default,){
final _that = this;
switch (_that) {
case _Episode():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Episode value)?  $default,){
final _that = this;
switch (_that) {
case _Episode() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'air_date')  String? airDate, @JsonKey(name: 'episode_number')  int? episodeNumber, @JsonKey(name: 'episode_type')  String? episodeType,  int? id,  String? name,  String? overview, @JsonKey(name: 'production_code')  String? productionCode,  int? runtime, @JsonKey(name: 'season_number')  int? seasonNumber, @JsonKey(name: 'show_id')  int? showId, @JsonKey(name: 'still_path')  String? stillPath, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount,  List<Crew>? crew, @JsonKey(name: 'guest_stars')  List<GuestStar>? guestStars)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Episode() when $default != null:
return $default(_that.airDate,_that.episodeNumber,_that.episodeType,_that.id,_that.name,_that.overview,_that.productionCode,_that.runtime,_that.seasonNumber,_that.showId,_that.stillPath,_that.voteAverage,_that.voteCount,_that.crew,_that.guestStars);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'air_date')  String? airDate, @JsonKey(name: 'episode_number')  int? episodeNumber, @JsonKey(name: 'episode_type')  String? episodeType,  int? id,  String? name,  String? overview, @JsonKey(name: 'production_code')  String? productionCode,  int? runtime, @JsonKey(name: 'season_number')  int? seasonNumber, @JsonKey(name: 'show_id')  int? showId, @JsonKey(name: 'still_path')  String? stillPath, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount,  List<Crew>? crew, @JsonKey(name: 'guest_stars')  List<GuestStar>? guestStars)  $default,) {final _that = this;
switch (_that) {
case _Episode():
return $default(_that.airDate,_that.episodeNumber,_that.episodeType,_that.id,_that.name,_that.overview,_that.productionCode,_that.runtime,_that.seasonNumber,_that.showId,_that.stillPath,_that.voteAverage,_that.voteCount,_that.crew,_that.guestStars);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'air_date')  String? airDate, @JsonKey(name: 'episode_number')  int? episodeNumber, @JsonKey(name: 'episode_type')  String? episodeType,  int? id,  String? name,  String? overview, @JsonKey(name: 'production_code')  String? productionCode,  int? runtime, @JsonKey(name: 'season_number')  int? seasonNumber, @JsonKey(name: 'show_id')  int? showId, @JsonKey(name: 'still_path')  String? stillPath, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount,  List<Crew>? crew, @JsonKey(name: 'guest_stars')  List<GuestStar>? guestStars)?  $default,) {final _that = this;
switch (_that) {
case _Episode() when $default != null:
return $default(_that.airDate,_that.episodeNumber,_that.episodeType,_that.id,_that.name,_that.overview,_that.productionCode,_that.runtime,_that.seasonNumber,_that.showId,_that.stillPath,_that.voteAverage,_that.voteCount,_that.crew,_that.guestStars);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Episode implements Episode {
  const _Episode({@JsonKey(name: 'air_date') this.airDate, @JsonKey(name: 'episode_number') this.episodeNumber, @JsonKey(name: 'episode_type') this.episodeType, this.id, this.name, this.overview, @JsonKey(name: 'production_code') this.productionCode, this.runtime, @JsonKey(name: 'season_number') this.seasonNumber, @JsonKey(name: 'show_id') this.showId, @JsonKey(name: 'still_path') this.stillPath, @JsonKey(name: 'vote_average') this.voteAverage, @JsonKey(name: 'vote_count') this.voteCount,  List<Crew>? crew, @JsonKey(name: 'guest_stars')  List<GuestStar>? guestStars}): _crew = crew,_guestStars = guestStars;
  factory _Episode.fromJson(Map<String, dynamic> json) => _$EpisodeFromJson(json);

@override@JsonKey(name: 'air_date') final  String? airDate;
@override@JsonKey(name: 'episode_number') final  int? episodeNumber;
@override@JsonKey(name: 'episode_type') final  String? episodeType;
@override final  int? id;
@override final  String? name;
@override final  String? overview;
@override@JsonKey(name: 'production_code') final  String? productionCode;
@override final  int? runtime;
@override@JsonKey(name: 'season_number') final  int? seasonNumber;
@override@JsonKey(name: 'show_id') final  int? showId;
@override@JsonKey(name: 'still_path') final  String? stillPath;
@override@JsonKey(name: 'vote_average') final  double? voteAverage;
@override@JsonKey(name: 'vote_count') final  int? voteCount;
 final  List<Crew>? _crew;
@override List<Crew>? get crew {
  final value = _crew;
  if (value == null) return null;
  if (_crew is EqualUnmodifiableListView) return _crew;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<GuestStar>? _guestStars;
@override@JsonKey(name: 'guest_stars') List<GuestStar>? get guestStars {
  final value = _guestStars;
  if (value == null) return null;
  if (_guestStars is EqualUnmodifiableListView) return _guestStars;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpisodeCopyWith<_Episode> get copyWith => __$EpisodeCopyWithImpl<_Episode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpisodeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Episode&&(identical(other.airDate, airDate) || other.airDate == airDate)&&(identical(other.episodeNumber, episodeNumber) || other.episodeNumber == episodeNumber)&&(identical(other.episodeType, episodeType) || other.episodeType == episodeType)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.productionCode, productionCode) || other.productionCode == productionCode)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.seasonNumber, seasonNumber) || other.seasonNumber == seasonNumber)&&(identical(other.showId, showId) || other.showId == showId)&&(identical(other.stillPath, stillPath) || other.stillPath == stillPath)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&const DeepCollectionEquality().equals(other.crew, _crew)&&const DeepCollectionEquality().equals(other.guestStars, _guestStars));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,airDate,episodeNumber,episodeType,id,name,overview,productionCode,runtime,seasonNumber,showId,stillPath,voteAverage,voteCount,const DeepCollectionEquality().hash(_crew),const DeepCollectionEquality().hash(_guestStars));
}

@override
String toString() {
    return 'Episode(airDate: $airDate, episodeNumber: $episodeNumber, episodeType: $episodeType, id: $id, name: $name, overview: $overview, productionCode: $productionCode, runtime: $runtime, seasonNumber: $seasonNumber, showId: $showId, stillPath: $stillPath, voteAverage: $voteAverage, voteCount: $voteCount, crew: $crew, guestStars: $guestStars)';
}


}

/// @nodoc
abstract mixin class _$EpisodeCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$EpisodeCopyWith(_Episode value, $Res Function(_Episode) _then) = __$EpisodeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'air_date') String? airDate,@JsonKey(name: 'episode_number') int? episodeNumber,@JsonKey(name: 'episode_type') String? episodeType, int? id, String? name, String? overview,@JsonKey(name: 'production_code') String? productionCode, int? runtime,@JsonKey(name: 'season_number') int? seasonNumber,@JsonKey(name: 'show_id') int? showId,@JsonKey(name: 'still_path') String? stillPath,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount, List<Crew>? crew,@JsonKey(name: 'guest_stars') List<GuestStar>? guestStars
});




}
/// @nodoc
class __$EpisodeCopyWithImpl<$Res>
    implements _$EpisodeCopyWith<$Res> {
  __$EpisodeCopyWithImpl(this._self, this._then);

  final _Episode _self;
  final $Res Function(_Episode) _then;

/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? airDate = freezed,Object? episodeNumber = freezed,Object? episodeType = freezed,Object? id = freezed,Object? name = freezed,Object? overview = freezed,Object? productionCode = freezed,Object? runtime = freezed,Object? seasonNumber = freezed,Object? showId = freezed,Object? stillPath = freezed,Object? voteAverage = freezed,Object? voteCount = freezed,Object? crew = freezed,Object? guestStars = freezed,}) {
  return _then(_Episode(
airDate: freezed == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String?,episodeNumber: freezed == episodeNumber ? _self.episodeNumber : episodeNumber // ignore: cast_nullable_to_non_nullable
as int?,episodeType: freezed == episodeType ? _self.episodeType : episodeType // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,productionCode: freezed == productionCode ? _self.productionCode : productionCode // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,seasonNumber: freezed == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int?,showId: freezed == showId ? _self.showId : showId // ignore: cast_nullable_to_non_nullable
as int?,stillPath: freezed == stillPath ? _self.stillPath : stillPath // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,crew: freezed == crew ? _self._crew : crew // ignore: cast_nullable_to_non_nullable
as List<Crew>?,guestStars: freezed == guestStars ? _self._guestStars : guestStars // ignore: cast_nullable_to_non_nullable
as List<GuestStar>?,
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


/// @nodoc
mixin _$Network {

 int? get id; String? get name;@JsonKey(name: 'origin_country') String? get originalCountry;@JsonKey(name: 'logo_path') String? get logoPath;
/// Create a copy of Network
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkCopyWith<Network> get copyWith => _$NetworkCopyWithImpl<Network>(this as Network, _$identity);

  /// Serializes this Network to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Network;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Network&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.originalCountry, _this.originalCountry) || other.originalCountry == _this.originalCountry)&&(identical(other.logoPath, _this.logoPath) || other.logoPath == _this.logoPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Network;
  return Object.hash(runtimeType,_this.id,_this.name,_this.originalCountry,_this.logoPath);
}

@override
String toString() {
  final _this = this as Network;
  return 'Network(id: ${_this.id}, name: ${_this.name}, originalCountry: ${_this.originalCountry}, logoPath: ${_this.logoPath})';
}


}

/// @nodoc
abstract mixin class $NetworkCopyWith<$Res>  {
  factory $NetworkCopyWith(Network value, $Res Function(Network) _then) = _$NetworkCopyWithImpl;
@useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'origin_country') String? originalCountry,@JsonKey(name: 'logo_path') String? logoPath
});




}
/// @nodoc
class _$NetworkCopyWithImpl<$Res>
    implements $NetworkCopyWith<$Res> {
  _$NetworkCopyWithImpl(this._self, this._then);

  final Network _self;
  final $Res Function(Network) _then;

/// Create a copy of Network
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? originalCountry = freezed,Object? logoPath = freezed,}) {
  return _then(Network(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalCountry: freezed == originalCountry ? _self.originalCountry : originalCountry // ignore: cast_nullable_to_non_nullable
as String?,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Network].
extension NetworkPatterns on Network {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Network value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Network() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Network value)  $default,){
final _that = this;
switch (_that) {
case _Network():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Network value)?  $default,){
final _that = this;
switch (_that) {
case _Network() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'origin_country')  String? originalCountry, @JsonKey(name: 'logo_path')  String? logoPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Network() when $default != null:
return $default(_that.id,_that.name,_that.originalCountry,_that.logoPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'origin_country')  String? originalCountry, @JsonKey(name: 'logo_path')  String? logoPath)  $default,) {final _that = this;
switch (_that) {
case _Network():
return $default(_that.id,_that.name,_that.originalCountry,_that.logoPath);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name, @JsonKey(name: 'origin_country')  String? originalCountry, @JsonKey(name: 'logo_path')  String? logoPath)?  $default,) {final _that = this;
switch (_that) {
case _Network() when $default != null:
return $default(_that.id,_that.name,_that.originalCountry,_that.logoPath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Network implements Network {
  const _Network({this.id, this.name, @JsonKey(name: 'origin_country') this.originalCountry, @JsonKey(name: 'logo_path') this.logoPath});
  factory _Network.fromJson(Map<String, dynamic> json) => _$NetworkFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'origin_country') final  String? originalCountry;
@override@JsonKey(name: 'logo_path') final  String? logoPath;

/// Create a copy of Network
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkCopyWith<_Network> get copyWith => __$NetworkCopyWithImpl<_Network>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Network&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalCountry, originalCountry) || other.originalCountry == originalCountry)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,originalCountry,logoPath);
}

@override
String toString() {
    return 'Network(id: $id, name: $name, originalCountry: $originalCountry, logoPath: $logoPath)';
}


}

/// @nodoc
abstract mixin class _$NetworkCopyWith<$Res> implements $NetworkCopyWith<$Res> {
  factory _$NetworkCopyWith(_Network value, $Res Function(_Network) _then) = __$NetworkCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'origin_country') String? originalCountry,@JsonKey(name: 'logo_path') String? logoPath
});




}
/// @nodoc
class __$NetworkCopyWithImpl<$Res>
    implements _$NetworkCopyWith<$Res> {
  __$NetworkCopyWithImpl(this._self, this._then);

  final _Network _self;
  final $Res Function(_Network) _then;

/// Create a copy of Network
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? originalCountry = freezed,Object? logoPath = freezed,}) {
  return _then(_Network(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalCountry: freezed == originalCountry ? _self.originalCountry : originalCountry // ignore: cast_nullable_to_non_nullable
as String?,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
