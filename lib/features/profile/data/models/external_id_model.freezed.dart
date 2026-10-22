// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'external_id_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExternlIDModel {

 int? get id;@JsonKey(name: 'freebase_mid') String? get freebaseMid;@JsonKey(name: 'freebase_id') String? get freebaseId;@JsonKey(name: 'imdb_id') String? get imdbId;@JsonKey(name: 'tvrage_id') String? get tvrageId;@JsonKey(name: 'wikidata_id') String? get wikidataId;@JsonKey(name: 'facebook_id') String? get facebookId;@JsonKey(name: 'instagram_id') String? get instagramId;@JsonKey(name: 'tiktok_id') String? get tiktokId;@JsonKey(name: 'twitter_id') String? get twitterId;@JsonKey(name: 'youtube_id') String? get youtubeId;
/// Create a copy of ExternlIDModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExternlIDModelCopyWith<ExternlIDModel> get copyWith => _$ExternlIDModelCopyWithImpl<ExternlIDModel>(this as ExternlIDModel, _$identity);

  /// Serializes this ExternlIDModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ExternlIDModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExternlIDModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.freebaseMid, _this.freebaseMid) || other.freebaseMid == _this.freebaseMid)&&(identical(other.freebaseId, _this.freebaseId) || other.freebaseId == _this.freebaseId)&&(identical(other.imdbId, _this.imdbId) || other.imdbId == _this.imdbId)&&(identical(other.tvrageId, _this.tvrageId) || other.tvrageId == _this.tvrageId)&&(identical(other.wikidataId, _this.wikidataId) || other.wikidataId == _this.wikidataId)&&(identical(other.facebookId, _this.facebookId) || other.facebookId == _this.facebookId)&&(identical(other.instagramId, _this.instagramId) || other.instagramId == _this.instagramId)&&(identical(other.tiktokId, _this.tiktokId) || other.tiktokId == _this.tiktokId)&&(identical(other.twitterId, _this.twitterId) || other.twitterId == _this.twitterId)&&(identical(other.youtubeId, _this.youtubeId) || other.youtubeId == _this.youtubeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ExternlIDModel;
  return Object.hash(runtimeType,_this.id,_this.freebaseMid,_this.freebaseId,_this.imdbId,_this.tvrageId,_this.wikidataId,_this.facebookId,_this.instagramId,_this.tiktokId,_this.twitterId,_this.youtubeId);
}

@override
String toString() {
  final _this = this as ExternlIDModel;
  return 'ExternlIDModel(id: ${_this.id}, freebaseMid: ${_this.freebaseMid}, freebaseId: ${_this.freebaseId}, imdbId: ${_this.imdbId}, tvrageId: ${_this.tvrageId}, wikidataId: ${_this.wikidataId}, facebookId: ${_this.facebookId}, instagramId: ${_this.instagramId}, tiktokId: ${_this.tiktokId}, twitterId: ${_this.twitterId}, youtubeId: ${_this.youtubeId})';
}


}

/// @nodoc
abstract mixin class $ExternlIDModelCopyWith<$Res>  {
  factory $ExternlIDModelCopyWith(ExternlIDModel value, $Res Function(ExternlIDModel) _then) = _$ExternlIDModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'freebase_mid') String? freebaseMid,@JsonKey(name: 'freebase_id') String? freebaseId,@JsonKey(name: 'imdb_id') String? imdbId,@JsonKey(name: 'tvrage_id') String? tvrageId,@JsonKey(name: 'wikidata_id') String? wikidataId,@JsonKey(name: 'facebook_id') String? facebookId,@JsonKey(name: 'instagram_id') String? instagramId,@JsonKey(name: 'tiktok_id') String? tiktokId,@JsonKey(name: 'twitter_id') String? twitterId,@JsonKey(name: 'youtube_id') String? youtubeId
});




}
/// @nodoc
class _$ExternlIDModelCopyWithImpl<$Res>
    implements $ExternlIDModelCopyWith<$Res> {
  _$ExternlIDModelCopyWithImpl(this._self, this._then);

  final ExternlIDModel _self;
  final $Res Function(ExternlIDModel) _then;

/// Create a copy of ExternlIDModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? freebaseMid = freezed,Object? freebaseId = freezed,Object? imdbId = freezed,Object? tvrageId = freezed,Object? wikidataId = freezed,Object? facebookId = freezed,Object? instagramId = freezed,Object? tiktokId = freezed,Object? twitterId = freezed,Object? youtubeId = freezed,}) {
  return _then(ExternlIDModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,freebaseMid: freezed == freebaseMid ? _self.freebaseMid : freebaseMid // ignore: cast_nullable_to_non_nullable
as String?,freebaseId: freezed == freebaseId ? _self.freebaseId : freebaseId // ignore: cast_nullable_to_non_nullable
as String?,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,tvrageId: freezed == tvrageId ? _self.tvrageId : tvrageId // ignore: cast_nullable_to_non_nullable
as String?,wikidataId: freezed == wikidataId ? _self.wikidataId : wikidataId // ignore: cast_nullable_to_non_nullable
as String?,facebookId: freezed == facebookId ? _self.facebookId : facebookId // ignore: cast_nullable_to_non_nullable
as String?,instagramId: freezed == instagramId ? _self.instagramId : instagramId // ignore: cast_nullable_to_non_nullable
as String?,tiktokId: freezed == tiktokId ? _self.tiktokId : tiktokId // ignore: cast_nullable_to_non_nullable
as String?,twitterId: freezed == twitterId ? _self.twitterId : twitterId // ignore: cast_nullable_to_non_nullable
as String?,youtubeId: freezed == youtubeId ? _self.youtubeId : youtubeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExternlIDModel].
extension ExternlIDModelPatterns on ExternlIDModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExternlIDModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExternlIDModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExternlIDModel value)  $default,){
final _that = this;
switch (_that) {
case _ExternlIDModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExternlIDModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExternlIDModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'freebase_mid')  String? freebaseMid, @JsonKey(name: 'freebase_id')  String? freebaseId, @JsonKey(name: 'imdb_id')  String? imdbId, @JsonKey(name: 'tvrage_id')  String? tvrageId, @JsonKey(name: 'wikidata_id')  String? wikidataId, @JsonKey(name: 'facebook_id')  String? facebookId, @JsonKey(name: 'instagram_id')  String? instagramId, @JsonKey(name: 'tiktok_id')  String? tiktokId, @JsonKey(name: 'twitter_id')  String? twitterId, @JsonKey(name: 'youtube_id')  String? youtubeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExternlIDModel() when $default != null:
return $default(_that.id,_that.freebaseMid,_that.freebaseId,_that.imdbId,_that.tvrageId,_that.wikidataId,_that.facebookId,_that.instagramId,_that.tiktokId,_that.twitterId,_that.youtubeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'freebase_mid')  String? freebaseMid, @JsonKey(name: 'freebase_id')  String? freebaseId, @JsonKey(name: 'imdb_id')  String? imdbId, @JsonKey(name: 'tvrage_id')  String? tvrageId, @JsonKey(name: 'wikidata_id')  String? wikidataId, @JsonKey(name: 'facebook_id')  String? facebookId, @JsonKey(name: 'instagram_id')  String? instagramId, @JsonKey(name: 'tiktok_id')  String? tiktokId, @JsonKey(name: 'twitter_id')  String? twitterId, @JsonKey(name: 'youtube_id')  String? youtubeId)  $default,) {final _that = this;
switch (_that) {
case _ExternlIDModel():
return $default(_that.id,_that.freebaseMid,_that.freebaseId,_that.imdbId,_that.tvrageId,_that.wikidataId,_that.facebookId,_that.instagramId,_that.tiktokId,_that.twitterId,_that.youtubeId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'freebase_mid')  String? freebaseMid, @JsonKey(name: 'freebase_id')  String? freebaseId, @JsonKey(name: 'imdb_id')  String? imdbId, @JsonKey(name: 'tvrage_id')  String? tvrageId, @JsonKey(name: 'wikidata_id')  String? wikidataId, @JsonKey(name: 'facebook_id')  String? facebookId, @JsonKey(name: 'instagram_id')  String? instagramId, @JsonKey(name: 'tiktok_id')  String? tiktokId, @JsonKey(name: 'twitter_id')  String? twitterId, @JsonKey(name: 'youtube_id')  String? youtubeId)?  $default,) {final _that = this;
switch (_that) {
case _ExternlIDModel() when $default != null:
return $default(_that.id,_that.freebaseMid,_that.freebaseId,_that.imdbId,_that.tvrageId,_that.wikidataId,_that.facebookId,_that.instagramId,_that.tiktokId,_that.twitterId,_that.youtubeId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExternlIDModel implements ExternlIDModel {
  const _ExternlIDModel({this.id, @JsonKey(name: 'freebase_mid') this.freebaseMid, @JsonKey(name: 'freebase_id') this.freebaseId, @JsonKey(name: 'imdb_id') this.imdbId, @JsonKey(name: 'tvrage_id') this.tvrageId, @JsonKey(name: 'wikidata_id') this.wikidataId, @JsonKey(name: 'facebook_id') this.facebookId, @JsonKey(name: 'instagram_id') this.instagramId, @JsonKey(name: 'tiktok_id') this.tiktokId, @JsonKey(name: 'twitter_id') this.twitterId, @JsonKey(name: 'youtube_id') this.youtubeId});
  factory _ExternlIDModel.fromJson(Map<String, dynamic> json) => _$ExternlIDModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'freebase_mid') final  String? freebaseMid;
@override@JsonKey(name: 'freebase_id') final  String? freebaseId;
@override@JsonKey(name: 'imdb_id') final  String? imdbId;
@override@JsonKey(name: 'tvrage_id') final  String? tvrageId;
@override@JsonKey(name: 'wikidata_id') final  String? wikidataId;
@override@JsonKey(name: 'facebook_id') final  String? facebookId;
@override@JsonKey(name: 'instagram_id') final  String? instagramId;
@override@JsonKey(name: 'tiktok_id') final  String? tiktokId;
@override@JsonKey(name: 'twitter_id') final  String? twitterId;
@override@JsonKey(name: 'youtube_id') final  String? youtubeId;

/// Create a copy of ExternlIDModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExternlIDModelCopyWith<_ExternlIDModel> get copyWith => __$ExternlIDModelCopyWithImpl<_ExternlIDModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExternlIDModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExternlIDModel&&(identical(other.id, id) || other.id == id)&&(identical(other.freebaseMid, freebaseMid) || other.freebaseMid == freebaseMid)&&(identical(other.freebaseId, freebaseId) || other.freebaseId == freebaseId)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&(identical(other.tvrageId, tvrageId) || other.tvrageId == tvrageId)&&(identical(other.wikidataId, wikidataId) || other.wikidataId == wikidataId)&&(identical(other.facebookId, facebookId) || other.facebookId == facebookId)&&(identical(other.instagramId, instagramId) || other.instagramId == instagramId)&&(identical(other.tiktokId, tiktokId) || other.tiktokId == tiktokId)&&(identical(other.twitterId, twitterId) || other.twitterId == twitterId)&&(identical(other.youtubeId, youtubeId) || other.youtubeId == youtubeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,freebaseMid,freebaseId,imdbId,tvrageId,wikidataId,facebookId,instagramId,tiktokId,twitterId,youtubeId);
}

@override
String toString() {
    return 'ExternlIDModel(id: $id, freebaseMid: $freebaseMid, freebaseId: $freebaseId, imdbId: $imdbId, tvrageId: $tvrageId, wikidataId: $wikidataId, facebookId: $facebookId, instagramId: $instagramId, tiktokId: $tiktokId, twitterId: $twitterId, youtubeId: $youtubeId)';
}


}

/// @nodoc
abstract mixin class _$ExternlIDModelCopyWith<$Res> implements $ExternlIDModelCopyWith<$Res> {
  factory _$ExternlIDModelCopyWith(_ExternlIDModel value, $Res Function(_ExternlIDModel) _then) = __$ExternlIDModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'freebase_mid') String? freebaseMid,@JsonKey(name: 'freebase_id') String? freebaseId,@JsonKey(name: 'imdb_id') String? imdbId,@JsonKey(name: 'tvrage_id') String? tvrageId,@JsonKey(name: 'wikidata_id') String? wikidataId,@JsonKey(name: 'facebook_id') String? facebookId,@JsonKey(name: 'instagram_id') String? instagramId,@JsonKey(name: 'tiktok_id') String? tiktokId,@JsonKey(name: 'twitter_id') String? twitterId,@JsonKey(name: 'youtube_id') String? youtubeId
});




}
/// @nodoc
class __$ExternlIDModelCopyWithImpl<$Res>
    implements _$ExternlIDModelCopyWith<$Res> {
  __$ExternlIDModelCopyWithImpl(this._self, this._then);

  final _ExternlIDModel _self;
  final $Res Function(_ExternlIDModel) _then;

/// Create a copy of ExternlIDModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? freebaseMid = freezed,Object? freebaseId = freezed,Object? imdbId = freezed,Object? tvrageId = freezed,Object? wikidataId = freezed,Object? facebookId = freezed,Object? instagramId = freezed,Object? tiktokId = freezed,Object? twitterId = freezed,Object? youtubeId = freezed,}) {
  return _then(_ExternlIDModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,freebaseMid: freezed == freebaseMid ? _self.freebaseMid : freebaseMid // ignore: cast_nullable_to_non_nullable
as String?,freebaseId: freezed == freebaseId ? _self.freebaseId : freebaseId // ignore: cast_nullable_to_non_nullable
as String?,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,tvrageId: freezed == tvrageId ? _self.tvrageId : tvrageId // ignore: cast_nullable_to_non_nullable
as String?,wikidataId: freezed == wikidataId ? _self.wikidataId : wikidataId // ignore: cast_nullable_to_non_nullable
as String?,facebookId: freezed == facebookId ? _self.facebookId : facebookId // ignore: cast_nullable_to_non_nullable
as String?,instagramId: freezed == instagramId ? _self.instagramId : instagramId // ignore: cast_nullable_to_non_nullable
as String?,tiktokId: freezed == tiktokId ? _self.tiktokId : tiktokId // ignore: cast_nullable_to_non_nullable
as String?,twitterId: freezed == twitterId ? _self.twitterId : twitterId // ignore: cast_nullable_to_non_nullable
as String?,youtubeId: freezed == youtubeId ? _self.youtubeId : youtubeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
