// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_provider_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WatchProviderModel {

 int? get id; Map<String, WatchProviderRegion>? get results;
/// Create a copy of WatchProviderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchProviderModelCopyWith<WatchProviderModel> get copyWith => _$WatchProviderModelCopyWithImpl<WatchProviderModel>(this as WatchProviderModel, _$identity);

  /// Serializes this WatchProviderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchProviderModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'WatchProviderModel(id: $id, results: $results)';
}


}

/// @nodoc
abstract mixin class $WatchProviderModelCopyWith<$Res>  {
  factory $WatchProviderModelCopyWith(WatchProviderModel value, $Res Function(WatchProviderModel) _then) = _$WatchProviderModelCopyWithImpl;
@useResult
$Res call({
 int? id, Map<String, WatchProviderRegion>? results
});




}
/// @nodoc
class _$WatchProviderModelCopyWithImpl<$Res>
    implements $WatchProviderModelCopyWith<$Res> {
  _$WatchProviderModelCopyWithImpl(this._self, this._then);

  final WatchProviderModel _self;
  final $Res Function(WatchProviderModel) _then;

/// Create a copy of WatchProviderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? results = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as Map<String, WatchProviderRegion>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WatchProviderModel].
extension WatchProviderModelPatterns on WatchProviderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WatchProviderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WatchProviderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WatchProviderModel value)  $default,){
final _that = this;
switch (_that) {
case _WatchProviderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WatchProviderModel value)?  $default,){
final _that = this;
switch (_that) {
case _WatchProviderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  Map<String, WatchProviderRegion>? results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WatchProviderModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  Map<String, WatchProviderRegion>? results)  $default,) {final _that = this;
switch (_that) {
case _WatchProviderModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  Map<String, WatchProviderRegion>? results)?  $default,) {final _that = this;
switch (_that) {
case _WatchProviderModel() when $default != null:
return $default(_that.id,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WatchProviderModel implements WatchProviderModel {
  const _WatchProviderModel({this.id, final  Map<String, WatchProviderRegion>? results}): _results = results;
  factory _WatchProviderModel.fromJson(Map<String, dynamic> json) => _$WatchProviderModelFromJson(json);

@override final  int? id;
 final  Map<String, WatchProviderRegion>? _results;
@override Map<String, WatchProviderRegion>? get results {
  final value = _results;
  if (value == null) return null;
  if (_results is EqualUnmodifiableMapView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of WatchProviderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WatchProviderModelCopyWith<_WatchProviderModel> get copyWith => __$WatchProviderModelCopyWithImpl<_WatchProviderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WatchProviderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WatchProviderModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'WatchProviderModel(id: $id, results: $results)';
}


}

/// @nodoc
abstract mixin class _$WatchProviderModelCopyWith<$Res> implements $WatchProviderModelCopyWith<$Res> {
  factory _$WatchProviderModelCopyWith(_WatchProviderModel value, $Res Function(_WatchProviderModel) _then) = __$WatchProviderModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, Map<String, WatchProviderRegion>? results
});




}
/// @nodoc
class __$WatchProviderModelCopyWithImpl<$Res>
    implements _$WatchProviderModelCopyWith<$Res> {
  __$WatchProviderModelCopyWithImpl(this._self, this._then);

  final _WatchProviderModel _self;
  final $Res Function(_WatchProviderModel) _then;

/// Create a copy of WatchProviderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? results = freezed,}) {
  return _then(_WatchProviderModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as Map<String, WatchProviderRegion>?,
  ));
}


}


/// @nodoc
mixin _$WatchProviderRegion {

 String? get link; List<ProviderDetail>? get flatrate; List<ProviderDetail>? get buy; List<ProviderDetail>? get rent; List<ProviderDetail>? get free;
/// Create a copy of WatchProviderRegion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchProviderRegionCopyWith<WatchProviderRegion> get copyWith => _$WatchProviderRegionCopyWithImpl<WatchProviderRegion>(this as WatchProviderRegion, _$identity);

  /// Serializes this WatchProviderRegion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchProviderRegion&&(identical(other.link, link) || other.link == link)&&const DeepCollectionEquality().equals(other.flatrate, flatrate)&&const DeepCollectionEquality().equals(other.buy, buy)&&const DeepCollectionEquality().equals(other.rent, rent)&&const DeepCollectionEquality().equals(other.free, free));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,link,const DeepCollectionEquality().hash(flatrate),const DeepCollectionEquality().hash(buy),const DeepCollectionEquality().hash(rent),const DeepCollectionEquality().hash(free));

@override
String toString() {
  return 'WatchProviderRegion(link: $link, flatrate: $flatrate, buy: $buy, rent: $rent, free: $free)';
}


}

/// @nodoc
abstract mixin class $WatchProviderRegionCopyWith<$Res>  {
  factory $WatchProviderRegionCopyWith(WatchProviderRegion value, $Res Function(WatchProviderRegion) _then) = _$WatchProviderRegionCopyWithImpl;
@useResult
$Res call({
 String? link, List<ProviderDetail>? flatrate, List<ProviderDetail>? buy, List<ProviderDetail>? rent, List<ProviderDetail>? free
});




}
/// @nodoc
class _$WatchProviderRegionCopyWithImpl<$Res>
    implements $WatchProviderRegionCopyWith<$Res> {
  _$WatchProviderRegionCopyWithImpl(this._self, this._then);

  final WatchProviderRegion _self;
  final $Res Function(WatchProviderRegion) _then;

/// Create a copy of WatchProviderRegion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? link = freezed,Object? flatrate = freezed,Object? buy = freezed,Object? rent = freezed,Object? free = freezed,}) {
  return _then(_self.copyWith(
link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,flatrate: freezed == flatrate ? _self.flatrate : flatrate // ignore: cast_nullable_to_non_nullable
as List<ProviderDetail>?,buy: freezed == buy ? _self.buy : buy // ignore: cast_nullable_to_non_nullable
as List<ProviderDetail>?,rent: freezed == rent ? _self.rent : rent // ignore: cast_nullable_to_non_nullable
as List<ProviderDetail>?,free: freezed == free ? _self.free : free // ignore: cast_nullable_to_non_nullable
as List<ProviderDetail>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WatchProviderRegion].
extension WatchProviderRegionPatterns on WatchProviderRegion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WatchProviderRegion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WatchProviderRegion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WatchProviderRegion value)  $default,){
final _that = this;
switch (_that) {
case _WatchProviderRegion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WatchProviderRegion value)?  $default,){
final _that = this;
switch (_that) {
case _WatchProviderRegion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? link,  List<ProviderDetail>? flatrate,  List<ProviderDetail>? buy,  List<ProviderDetail>? rent,  List<ProviderDetail>? free)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WatchProviderRegion() when $default != null:
return $default(_that.link,_that.flatrate,_that.buy,_that.rent,_that.free);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? link,  List<ProviderDetail>? flatrate,  List<ProviderDetail>? buy,  List<ProviderDetail>? rent,  List<ProviderDetail>? free)  $default,) {final _that = this;
switch (_that) {
case _WatchProviderRegion():
return $default(_that.link,_that.flatrate,_that.buy,_that.rent,_that.free);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? link,  List<ProviderDetail>? flatrate,  List<ProviderDetail>? buy,  List<ProviderDetail>? rent,  List<ProviderDetail>? free)?  $default,) {final _that = this;
switch (_that) {
case _WatchProviderRegion() when $default != null:
return $default(_that.link,_that.flatrate,_that.buy,_that.rent,_that.free);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WatchProviderRegion implements WatchProviderRegion {
  const _WatchProviderRegion({this.link, final  List<ProviderDetail>? flatrate, final  List<ProviderDetail>? buy, final  List<ProviderDetail>? rent, final  List<ProviderDetail>? free}): _flatrate = flatrate,_buy = buy,_rent = rent,_free = free;
  factory _WatchProviderRegion.fromJson(Map<String, dynamic> json) => _$WatchProviderRegionFromJson(json);

@override final  String? link;
 final  List<ProviderDetail>? _flatrate;
@override List<ProviderDetail>? get flatrate {
  final value = _flatrate;
  if (value == null) return null;
  if (_flatrate is EqualUnmodifiableListView) return _flatrate;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProviderDetail>? _buy;
@override List<ProviderDetail>? get buy {
  final value = _buy;
  if (value == null) return null;
  if (_buy is EqualUnmodifiableListView) return _buy;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProviderDetail>? _rent;
@override List<ProviderDetail>? get rent {
  final value = _rent;
  if (value == null) return null;
  if (_rent is EqualUnmodifiableListView) return _rent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProviderDetail>? _free;
@override List<ProviderDetail>? get free {
  final value = _free;
  if (value == null) return null;
  if (_free is EqualUnmodifiableListView) return _free;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of WatchProviderRegion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WatchProviderRegionCopyWith<_WatchProviderRegion> get copyWith => __$WatchProviderRegionCopyWithImpl<_WatchProviderRegion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WatchProviderRegionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WatchProviderRegion&&(identical(other.link, link) || other.link == link)&&const DeepCollectionEquality().equals(other._flatrate, _flatrate)&&const DeepCollectionEquality().equals(other._buy, _buy)&&const DeepCollectionEquality().equals(other._rent, _rent)&&const DeepCollectionEquality().equals(other._free, _free));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,link,const DeepCollectionEquality().hash(_flatrate),const DeepCollectionEquality().hash(_buy),const DeepCollectionEquality().hash(_rent),const DeepCollectionEquality().hash(_free));

@override
String toString() {
  return 'WatchProviderRegion(link: $link, flatrate: $flatrate, buy: $buy, rent: $rent, free: $free)';
}


}

/// @nodoc
abstract mixin class _$WatchProviderRegionCopyWith<$Res> implements $WatchProviderRegionCopyWith<$Res> {
  factory _$WatchProviderRegionCopyWith(_WatchProviderRegion value, $Res Function(_WatchProviderRegion) _then) = __$WatchProviderRegionCopyWithImpl;
@override @useResult
$Res call({
 String? link, List<ProviderDetail>? flatrate, List<ProviderDetail>? buy, List<ProviderDetail>? rent, List<ProviderDetail>? free
});




}
/// @nodoc
class __$WatchProviderRegionCopyWithImpl<$Res>
    implements _$WatchProviderRegionCopyWith<$Res> {
  __$WatchProviderRegionCopyWithImpl(this._self, this._then);

  final _WatchProviderRegion _self;
  final $Res Function(_WatchProviderRegion) _then;

/// Create a copy of WatchProviderRegion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? link = freezed,Object? flatrate = freezed,Object? buy = freezed,Object? rent = freezed,Object? free = freezed,}) {
  return _then(_WatchProviderRegion(
link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,flatrate: freezed == flatrate ? _self._flatrate : flatrate // ignore: cast_nullable_to_non_nullable
as List<ProviderDetail>?,buy: freezed == buy ? _self._buy : buy // ignore: cast_nullable_to_non_nullable
as List<ProviderDetail>?,rent: freezed == rent ? _self._rent : rent // ignore: cast_nullable_to_non_nullable
as List<ProviderDetail>?,free: freezed == free ? _self._free : free // ignore: cast_nullable_to_non_nullable
as List<ProviderDetail>?,
  ));
}


}


/// @nodoc
mixin _$ProviderDetail {

@JsonKey(name: 'logo_path') String? get logoPath;@JsonKey(name: 'provider_id') int? get providerId;@JsonKey(name: 'provider_name') String? get providerName;@JsonKey(name: 'display_priority') int? get displayPriority;
/// Create a copy of ProviderDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProviderDetailCopyWith<ProviderDetail> get copyWith => _$ProviderDetailCopyWithImpl<ProviderDetail>(this as ProviderDetail, _$identity);

  /// Serializes this ProviderDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProviderDetail&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.providerName, providerName) || other.providerName == providerName)&&(identical(other.displayPriority, displayPriority) || other.displayPriority == displayPriority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,logoPath,providerId,providerName,displayPriority);

@override
String toString() {
  return 'ProviderDetail(logoPath: $logoPath, providerId: $providerId, providerName: $providerName, displayPriority: $displayPriority)';
}


}

/// @nodoc
abstract mixin class $ProviderDetailCopyWith<$Res>  {
  factory $ProviderDetailCopyWith(ProviderDetail value, $Res Function(ProviderDetail) _then) = _$ProviderDetailCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'logo_path') String? logoPath,@JsonKey(name: 'provider_id') int? providerId,@JsonKey(name: 'provider_name') String? providerName,@JsonKey(name: 'display_priority') int? displayPriority
});




}
/// @nodoc
class _$ProviderDetailCopyWithImpl<$Res>
    implements $ProviderDetailCopyWith<$Res> {
  _$ProviderDetailCopyWithImpl(this._self, this._then);

  final ProviderDetail _self;
  final $Res Function(ProviderDetail) _then;

/// Create a copy of ProviderDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logoPath = freezed,Object? providerId = freezed,Object? providerName = freezed,Object? displayPriority = freezed,}) {
  return _then(_self.copyWith(
logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,providerId: freezed == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as int?,providerName: freezed == providerName ? _self.providerName : providerName // ignore: cast_nullable_to_non_nullable
as String?,displayPriority: freezed == displayPriority ? _self.displayPriority : displayPriority // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProviderDetail].
extension ProviderDetailPatterns on ProviderDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProviderDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProviderDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProviderDetail value)  $default,){
final _that = this;
switch (_that) {
case _ProviderDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProviderDetail value)?  $default,){
final _that = this;
switch (_that) {
case _ProviderDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'logo_path')  String? logoPath, @JsonKey(name: 'provider_id')  int? providerId, @JsonKey(name: 'provider_name')  String? providerName, @JsonKey(name: 'display_priority')  int? displayPriority)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProviderDetail() when $default != null:
return $default(_that.logoPath,_that.providerId,_that.providerName,_that.displayPriority);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'logo_path')  String? logoPath, @JsonKey(name: 'provider_id')  int? providerId, @JsonKey(name: 'provider_name')  String? providerName, @JsonKey(name: 'display_priority')  int? displayPriority)  $default,) {final _that = this;
switch (_that) {
case _ProviderDetail():
return $default(_that.logoPath,_that.providerId,_that.providerName,_that.displayPriority);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'logo_path')  String? logoPath, @JsonKey(name: 'provider_id')  int? providerId, @JsonKey(name: 'provider_name')  String? providerName, @JsonKey(name: 'display_priority')  int? displayPriority)?  $default,) {final _that = this;
switch (_that) {
case _ProviderDetail() when $default != null:
return $default(_that.logoPath,_that.providerId,_that.providerName,_that.displayPriority);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProviderDetail implements ProviderDetail {
  const _ProviderDetail({@JsonKey(name: 'logo_path') this.logoPath, @JsonKey(name: 'provider_id') this.providerId, @JsonKey(name: 'provider_name') this.providerName, @JsonKey(name: 'display_priority') this.displayPriority});
  factory _ProviderDetail.fromJson(Map<String, dynamic> json) => _$ProviderDetailFromJson(json);

@override@JsonKey(name: 'logo_path') final  String? logoPath;
@override@JsonKey(name: 'provider_id') final  int? providerId;
@override@JsonKey(name: 'provider_name') final  String? providerName;
@override@JsonKey(name: 'display_priority') final  int? displayPriority;

/// Create a copy of ProviderDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProviderDetailCopyWith<_ProviderDetail> get copyWith => __$ProviderDetailCopyWithImpl<_ProviderDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProviderDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProviderDetail&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.providerName, providerName) || other.providerName == providerName)&&(identical(other.displayPriority, displayPriority) || other.displayPriority == displayPriority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,logoPath,providerId,providerName,displayPriority);

@override
String toString() {
  return 'ProviderDetail(logoPath: $logoPath, providerId: $providerId, providerName: $providerName, displayPriority: $displayPriority)';
}


}

/// @nodoc
abstract mixin class _$ProviderDetailCopyWith<$Res> implements $ProviderDetailCopyWith<$Res> {
  factory _$ProviderDetailCopyWith(_ProviderDetail value, $Res Function(_ProviderDetail) _then) = __$ProviderDetailCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'logo_path') String? logoPath,@JsonKey(name: 'provider_id') int? providerId,@JsonKey(name: 'provider_name') String? providerName,@JsonKey(name: 'display_priority') int? displayPriority
});




}
/// @nodoc
class __$ProviderDetailCopyWithImpl<$Res>
    implements _$ProviderDetailCopyWith<$Res> {
  __$ProviderDetailCopyWithImpl(this._self, this._then);

  final _ProviderDetail _self;
  final $Res Function(_ProviderDetail) _then;

/// Create a copy of ProviderDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logoPath = freezed,Object? providerId = freezed,Object? providerName = freezed,Object? displayPriority = freezed,}) {
  return _then(_ProviderDetail(
logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,providerId: freezed == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as int?,providerName: freezed == providerName ? _self.providerName : providerName // ignore: cast_nullable_to_non_nullable
as String?,displayPriority: freezed == displayPriority ? _self.displayPriority : displayPriority // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
