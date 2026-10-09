// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'release_dates_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReleaseDatesModel {

 int? get id; List<Results>? get results;
/// Create a copy of ReleaseDatesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReleaseDatesModelCopyWith<ReleaseDatesModel> get copyWith => _$ReleaseDatesModelCopyWithImpl<ReleaseDatesModel>(this as ReleaseDatesModel, _$identity);

  /// Serializes this ReleaseDatesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReleaseDatesModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'ReleaseDatesModel(id: $id, results: $results)';
}


}

/// @nodoc
abstract mixin class $ReleaseDatesModelCopyWith<$Res>  {
  factory $ReleaseDatesModelCopyWith(ReleaseDatesModel value, $Res Function(ReleaseDatesModel) _then) = _$ReleaseDatesModelCopyWithImpl;
@useResult
$Res call({
 int? id, List<Results>? results
});




}
/// @nodoc
class _$ReleaseDatesModelCopyWithImpl<$Res>
    implements $ReleaseDatesModelCopyWith<$Res> {
  _$ReleaseDatesModelCopyWithImpl(this._self, this._then);

  final ReleaseDatesModel _self;
  final $Res Function(ReleaseDatesModel) _then;

/// Create a copy of ReleaseDatesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? results = freezed,}) {
  return _then(ReleaseDatesModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Results>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReleaseDatesModel].
extension ReleaseDatesModelPatterns on ReleaseDatesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReleaseDatesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReleaseDatesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReleaseDatesModel value)  $default,){
final _that = this;
switch (_that) {
case _ReleaseDatesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReleaseDatesModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReleaseDatesModel() when $default != null:
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
case _ReleaseDatesModel() when $default != null:
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
case _ReleaseDatesModel():
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
case _ReleaseDatesModel() when $default != null:
return $default(_that.id,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReleaseDatesModel implements ReleaseDatesModel {
  const _ReleaseDatesModel({this.id,  List<Results>? results}): _results = results;
  factory _ReleaseDatesModel.fromJson(Map<String, dynamic> json) => _$ReleaseDatesModelFromJson(json);

@override final  int? id;
 final  List<Results>? _results;
@override List<Results>? get results {
  final value = _results;
  if (value == null) return null;
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ReleaseDatesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReleaseDatesModelCopyWith<_ReleaseDatesModel> get copyWith => __$ReleaseDatesModelCopyWithImpl<_ReleaseDatesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReleaseDatesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReleaseDatesModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'ReleaseDatesModel(id: $id, results: $results)';
}


}

/// @nodoc
abstract mixin class _$ReleaseDatesModelCopyWith<$Res> implements $ReleaseDatesModelCopyWith<$Res> {
  factory _$ReleaseDatesModelCopyWith(_ReleaseDatesModel value, $Res Function(_ReleaseDatesModel) _then) = __$ReleaseDatesModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, List<Results>? results
});




}
/// @nodoc
class __$ReleaseDatesModelCopyWithImpl<$Res>
    implements _$ReleaseDatesModelCopyWith<$Res> {
  __$ReleaseDatesModelCopyWithImpl(this._self, this._then);

  final _ReleaseDatesModel _self;
  final $Res Function(_ReleaseDatesModel) _then;

/// Create a copy of ReleaseDatesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? results = freezed,}) {
  return _then(_ReleaseDatesModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Results>?,
  ));
}


}


/// @nodoc
mixin _$Results {

@JsonKey(name: 'iso_3166_1') String? get iso3611;@JsonKey(name: 'release_dates') List<ReleaseDates>? get releaseDates;
/// Create a copy of Results
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultsCopyWith<Results> get copyWith => _$ResultsCopyWithImpl<Results>(this as Results, _$identity);

  /// Serializes this Results to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Results&&(identical(other.iso3611, iso3611) || other.iso3611 == iso3611)&&const DeepCollectionEquality().equals(other.releaseDates, releaseDates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,iso3611,const DeepCollectionEquality().hash(releaseDates));

@override
String toString() {
  return 'Results(iso3611: $iso3611, releaseDates: $releaseDates)';
}


}

/// @nodoc
abstract mixin class $ResultsCopyWith<$Res>  {
  factory $ResultsCopyWith(Results value, $Res Function(Results) _then) = _$ResultsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'iso_3166_1') String? iso3611,@JsonKey(name: 'release_dates') List<ReleaseDates>? releaseDates
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
@pragma('vm:prefer-inline') @override $Res call({Object? iso3611 = freezed,Object? releaseDates = freezed,}) {
  return _then(Results(
iso3611: freezed == iso3611 ? _self.iso3611 : iso3611 // ignore: cast_nullable_to_non_nullable
as String?,releaseDates: freezed == releaseDates ? _self.releaseDates : releaseDates // ignore: cast_nullable_to_non_nullable
as List<ReleaseDates>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'iso_3166_1')  String? iso3611, @JsonKey(name: 'release_dates')  List<ReleaseDates>? releaseDates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Results() when $default != null:
return $default(_that.iso3611,_that.releaseDates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'iso_3166_1')  String? iso3611, @JsonKey(name: 'release_dates')  List<ReleaseDates>? releaseDates)  $default,) {final _that = this;
switch (_that) {
case _Results():
return $default(_that.iso3611,_that.releaseDates);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'iso_3166_1')  String? iso3611, @JsonKey(name: 'release_dates')  List<ReleaseDates>? releaseDates)?  $default,) {final _that = this;
switch (_that) {
case _Results() when $default != null:
return $default(_that.iso3611,_that.releaseDates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Results implements Results {
  const _Results({@JsonKey(name: 'iso_3166_1') this.iso3611, @JsonKey(name: 'release_dates')  List<ReleaseDates>? releaseDates}): _releaseDates = releaseDates;
  factory _Results.fromJson(Map<String, dynamic> json) => _$ResultsFromJson(json);

@override@JsonKey(name: 'iso_3166_1') final  String? iso3611;
 final  List<ReleaseDates>? _releaseDates;
@override@JsonKey(name: 'release_dates') List<ReleaseDates>? get releaseDates {
  final value = _releaseDates;
  if (value == null) return null;
  if (_releaseDates is EqualUnmodifiableListView) return _releaseDates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Results&&(identical(other.iso3611, iso3611) || other.iso3611 == iso3611)&&const DeepCollectionEquality().equals(other._releaseDates, _releaseDates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,iso3611,const DeepCollectionEquality().hash(_releaseDates));

@override
String toString() {
  return 'Results(iso3611: $iso3611, releaseDates: $releaseDates)';
}


}

/// @nodoc
abstract mixin class _$ResultsCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$ResultsCopyWith(_Results value, $Res Function(_Results) _then) = __$ResultsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'iso_3166_1') String? iso3611,@JsonKey(name: 'release_dates') List<ReleaseDates>? releaseDates
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
@override @pragma('vm:prefer-inline') $Res call({Object? iso3611 = freezed,Object? releaseDates = freezed,}) {
  return _then(_Results(
iso3611: freezed == iso3611 ? _self.iso3611 : iso3611 // ignore: cast_nullable_to_non_nullable
as String?,releaseDates: freezed == releaseDates ? _self._releaseDates : releaseDates // ignore: cast_nullable_to_non_nullable
as List<ReleaseDates>?,
  ));
}


}


/// @nodoc
mixin _$ReleaseDates {

 String? get certification; List<String>? get descriptors;@JsonKey(name: 'iso_639_1') String? get iso639; String? get note;@JsonKey(name: 'release_date') String? get releaseDate; int? get type;
/// Create a copy of ReleaseDates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReleaseDatesCopyWith<ReleaseDates> get copyWith => _$ReleaseDatesCopyWithImpl<ReleaseDates>(this as ReleaseDates, _$identity);

  /// Serializes this ReleaseDates to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReleaseDates&&(identical(other.certification, certification) || other.certification == certification)&&const DeepCollectionEquality().equals(other.descriptors, descriptors)&&(identical(other.iso639, iso639) || other.iso639 == iso639)&&(identical(other.note, note) || other.note == note)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,certification,const DeepCollectionEquality().hash(descriptors),iso639,note,releaseDate,type);

@override
String toString() {
  return 'ReleaseDates(certification: $certification, descriptors: $descriptors, iso639: $iso639, note: $note, releaseDate: $releaseDate, type: $type)';
}


}

/// @nodoc
abstract mixin class $ReleaseDatesCopyWith<$Res>  {
  factory $ReleaseDatesCopyWith(ReleaseDates value, $Res Function(ReleaseDates) _then) = _$ReleaseDatesCopyWithImpl;
@useResult
$Res call({
 String? certification, List<String>? descriptors,@JsonKey(name: 'iso_639_1') String? iso639, String? note,@JsonKey(name: 'release_date') String? releaseDate, int? type
});




}
/// @nodoc
class _$ReleaseDatesCopyWithImpl<$Res>
    implements $ReleaseDatesCopyWith<$Res> {
  _$ReleaseDatesCopyWithImpl(this._self, this._then);

  final ReleaseDates _self;
  final $Res Function(ReleaseDates) _then;

/// Create a copy of ReleaseDates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? certification = freezed,Object? descriptors = freezed,Object? iso639 = freezed,Object? note = freezed,Object? releaseDate = freezed,Object? type = freezed,}) {
  return _then(ReleaseDates(
certification: freezed == certification ? _self.certification : certification // ignore: cast_nullable_to_non_nullable
as String?,descriptors: freezed == descriptors ? _self.descriptors : descriptors // ignore: cast_nullable_to_non_nullable
as List<String>?,iso639: freezed == iso639 ? _self.iso639 : iso639 // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReleaseDates].
extension ReleaseDatesPatterns on ReleaseDates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReleaseDates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReleaseDates() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReleaseDates value)  $default,){
final _that = this;
switch (_that) {
case _ReleaseDates():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReleaseDates value)?  $default,){
final _that = this;
switch (_that) {
case _ReleaseDates() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? certification,  List<String>? descriptors, @JsonKey(name: 'iso_639_1')  String? iso639,  String? note, @JsonKey(name: 'release_date')  String? releaseDate,  int? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReleaseDates() when $default != null:
return $default(_that.certification,_that.descriptors,_that.iso639,_that.note,_that.releaseDate,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? certification,  List<String>? descriptors, @JsonKey(name: 'iso_639_1')  String? iso639,  String? note, @JsonKey(name: 'release_date')  String? releaseDate,  int? type)  $default,) {final _that = this;
switch (_that) {
case _ReleaseDates():
return $default(_that.certification,_that.descriptors,_that.iso639,_that.note,_that.releaseDate,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? certification,  List<String>? descriptors, @JsonKey(name: 'iso_639_1')  String? iso639,  String? note, @JsonKey(name: 'release_date')  String? releaseDate,  int? type)?  $default,) {final _that = this;
switch (_that) {
case _ReleaseDates() when $default != null:
return $default(_that.certification,_that.descriptors,_that.iso639,_that.note,_that.releaseDate,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReleaseDates implements ReleaseDates {
  const _ReleaseDates({this.certification,  List<String>? descriptors, @JsonKey(name: 'iso_639_1') this.iso639, this.note, @JsonKey(name: 'release_date') this.releaseDate, this.type}): _descriptors = descriptors;
  factory _ReleaseDates.fromJson(Map<String, dynamic> json) => _$ReleaseDatesFromJson(json);

@override final  String? certification;
 final  List<String>? _descriptors;
@override List<String>? get descriptors {
  final value = _descriptors;
  if (value == null) return null;
  if (_descriptors is EqualUnmodifiableListView) return _descriptors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'iso_639_1') final  String? iso639;
@override final  String? note;
@override@JsonKey(name: 'release_date') final  String? releaseDate;
@override final  int? type;

/// Create a copy of ReleaseDates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReleaseDatesCopyWith<_ReleaseDates> get copyWith => __$ReleaseDatesCopyWithImpl<_ReleaseDates>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReleaseDatesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReleaseDates&&(identical(other.certification, certification) || other.certification == certification)&&const DeepCollectionEquality().equals(other._descriptors, _descriptors)&&(identical(other.iso639, iso639) || other.iso639 == iso639)&&(identical(other.note, note) || other.note == note)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,certification,const DeepCollectionEquality().hash(_descriptors),iso639,note,releaseDate,type);

@override
String toString() {
  return 'ReleaseDates(certification: $certification, descriptors: $descriptors, iso639: $iso639, note: $note, releaseDate: $releaseDate, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ReleaseDatesCopyWith<$Res> implements $ReleaseDatesCopyWith<$Res> {
  factory _$ReleaseDatesCopyWith(_ReleaseDates value, $Res Function(_ReleaseDates) _then) = __$ReleaseDatesCopyWithImpl;
@override @useResult
$Res call({
 String? certification, List<String>? descriptors,@JsonKey(name: 'iso_639_1') String? iso639, String? note,@JsonKey(name: 'release_date') String? releaseDate, int? type
});




}
/// @nodoc
class __$ReleaseDatesCopyWithImpl<$Res>
    implements _$ReleaseDatesCopyWith<$Res> {
  __$ReleaseDatesCopyWithImpl(this._self, this._then);

  final _ReleaseDates _self;
  final $Res Function(_ReleaseDates) _then;

/// Create a copy of ReleaseDates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? certification = freezed,Object? descriptors = freezed,Object? iso639 = freezed,Object? note = freezed,Object? releaseDate = freezed,Object? type = freezed,}) {
  return _then(_ReleaseDates(
certification: freezed == certification ? _self.certification : certification // ignore: cast_nullable_to_non_nullable
as String?,descriptors: freezed == descriptors ? _self._descriptors : descriptors // ignore: cast_nullable_to_non_nullable
as List<String>?,iso639: freezed == iso639 ? _self.iso639 : iso639 // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
