// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_people_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PopularPeopleModel {

 int? get page;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'total_results') int? get totalResults; List<People>? get results;
/// Create a copy of PopularPeopleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularPeopleModelCopyWith<PopularPeopleModel> get copyWith => _$PopularPeopleModelCopyWithImpl<PopularPeopleModel>(this as PopularPeopleModel, _$identity);

  /// Serializes this PopularPeopleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularPeopleModel&&(identical(other.page, page) || other.page == page)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,totalPages,totalResults,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'PopularPeopleModel(page: $page, totalPages: $totalPages, totalResults: $totalResults, results: $results)';
}


}

/// @nodoc
abstract mixin class $PopularPeopleModelCopyWith<$Res>  {
  factory $PopularPeopleModelCopyWith(PopularPeopleModel value, $Res Function(PopularPeopleModel) _then) = _$PopularPeopleModelCopyWithImpl;
@useResult
$Res call({
 int? page,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_results') int? totalResults, List<People>? results
});




}
/// @nodoc
class _$PopularPeopleModelCopyWithImpl<$Res>
    implements $PopularPeopleModelCopyWith<$Res> {
  _$PopularPeopleModelCopyWithImpl(this._self, this._then);

  final PopularPeopleModel _self;
  final $Res Function(PopularPeopleModel) _then;

/// Create a copy of PopularPeopleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? totalPages = freezed,Object? totalResults = freezed,Object? results = freezed,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<People>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PopularPeopleModel].
extension PopularPeopleModelPatterns on PopularPeopleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularPeopleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularPeopleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularPeopleModel value)  $default,){
final _that = this;
switch (_that) {
case _PopularPeopleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularPeopleModel value)?  $default,){
final _that = this;
switch (_that) {
case _PopularPeopleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? page, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults,  List<People>? results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopularPeopleModel() when $default != null:
return $default(_that.page,_that.totalPages,_that.totalResults,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? page, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults,  List<People>? results)  $default,) {final _that = this;
switch (_that) {
case _PopularPeopleModel():
return $default(_that.page,_that.totalPages,_that.totalResults,_that.results);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? page, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults,  List<People>? results)?  $default,) {final _that = this;
switch (_that) {
case _PopularPeopleModel() when $default != null:
return $default(_that.page,_that.totalPages,_that.totalResults,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopularPeopleModel implements PopularPeopleModel {
  const _PopularPeopleModel({this.page, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'total_results') this.totalResults, final  List<People>? results}): _results = results;
  factory _PopularPeopleModel.fromJson(Map<String, dynamic> json) => _$PopularPeopleModelFromJson(json);

@override final  int? page;
@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'total_results') final  int? totalResults;
 final  List<People>? _results;
@override List<People>? get results {
  final value = _results;
  if (value == null) return null;
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PopularPeopleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularPeopleModelCopyWith<_PopularPeopleModel> get copyWith => __$PopularPeopleModelCopyWithImpl<_PopularPeopleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopularPeopleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularPeopleModel&&(identical(other.page, page) || other.page == page)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,totalPages,totalResults,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'PopularPeopleModel(page: $page, totalPages: $totalPages, totalResults: $totalResults, results: $results)';
}


}

/// @nodoc
abstract mixin class _$PopularPeopleModelCopyWith<$Res> implements $PopularPeopleModelCopyWith<$Res> {
  factory _$PopularPeopleModelCopyWith(_PopularPeopleModel value, $Res Function(_PopularPeopleModel) _then) = __$PopularPeopleModelCopyWithImpl;
@override @useResult
$Res call({
 int? page,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_results') int? totalResults, List<People>? results
});




}
/// @nodoc
class __$PopularPeopleModelCopyWithImpl<$Res>
    implements _$PopularPeopleModelCopyWith<$Res> {
  __$PopularPeopleModelCopyWithImpl(this._self, this._then);

  final _PopularPeopleModel _self;
  final $Res Function(_PopularPeopleModel) _then;

/// Create a copy of PopularPeopleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? totalPages = freezed,Object? totalResults = freezed,Object? results = freezed,}) {
  return _then(_PopularPeopleModel(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<People>?,
  ));
}


}


/// @nodoc
mixin _$People {

 bool? get adult; int? get gender; int? get id;@JsonKey(name: 'known_for_department') String? get knownForDepartment; String? get name;@JsonKey(name: 'original_name') String? get originalName; double? get popularity;@JsonKey(name: 'profile_path') String? get profilePath;
/// Create a copy of People
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeopleCopyWith<People> get copyWith => _$PeopleCopyWithImpl<People>(this as People, _$identity);

  /// Serializes this People to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is People&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.id, id) || other.id == id)&&(identical(other.knownForDepartment, knownForDepartment) || other.knownForDepartment == knownForDepartment)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,gender,id,knownForDepartment,name,originalName,popularity,profilePath);

@override
String toString() {
  return 'People(adult: $adult, gender: $gender, id: $id, knownForDepartment: $knownForDepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath)';
}


}

/// @nodoc
abstract mixin class $PeopleCopyWith<$Res>  {
  factory $PeopleCopyWith(People value, $Res Function(People) _then) = _$PeopleCopyWithImpl;
@useResult
$Res call({
 bool? adult, int? gender, int? id,@JsonKey(name: 'known_for_department') String? knownForDepartment, String? name,@JsonKey(name: 'original_name') String? originalName, double? popularity,@JsonKey(name: 'profile_path') String? profilePath
});




}
/// @nodoc
class _$PeopleCopyWithImpl<$Res>
    implements $PeopleCopyWith<$Res> {
  _$PeopleCopyWithImpl(this._self, this._then);

  final People _self;
  final $Res Function(People) _then;

/// Create a copy of People
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = freezed,Object? gender = freezed,Object? id = freezed,Object? knownForDepartment = freezed,Object? name = freezed,Object? originalName = freezed,Object? popularity = freezed,Object? profilePath = freezed,}) {
  return _then(_self.copyWith(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,knownForDepartment: freezed == knownForDepartment ? _self.knownForDepartment : knownForDepartment // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [People].
extension PeoplePatterns on People {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _People value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _People() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _People value)  $default,){
final _that = this;
switch (_that) {
case _People():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _People value)?  $default,){
final _that = this;
switch (_that) {
case _People() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? adult,  int? gender,  int? id, @JsonKey(name: 'known_for_department')  String? knownForDepartment,  String? name, @JsonKey(name: 'original_name')  String? originalName,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _People() when $default != null:
return $default(_that.adult,_that.gender,_that.id,_that.knownForDepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? adult,  int? gender,  int? id, @JsonKey(name: 'known_for_department')  String? knownForDepartment,  String? name, @JsonKey(name: 'original_name')  String? originalName,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath)  $default,) {final _that = this;
switch (_that) {
case _People():
return $default(_that.adult,_that.gender,_that.id,_that.knownForDepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? adult,  int? gender,  int? id, @JsonKey(name: 'known_for_department')  String? knownForDepartment,  String? name, @JsonKey(name: 'original_name')  String? originalName,  double? popularity, @JsonKey(name: 'profile_path')  String? profilePath)?  $default,) {final _that = this;
switch (_that) {
case _People() when $default != null:
return $default(_that.adult,_that.gender,_that.id,_that.knownForDepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _People implements People {
  const _People({this.adult, this.gender, this.id, @JsonKey(name: 'known_for_department') this.knownForDepartment, this.name, @JsonKey(name: 'original_name') this.originalName, this.popularity, @JsonKey(name: 'profile_path') this.profilePath});
  factory _People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);

@override final  bool? adult;
@override final  int? gender;
@override final  int? id;
@override@JsonKey(name: 'known_for_department') final  String? knownForDepartment;
@override final  String? name;
@override@JsonKey(name: 'original_name') final  String? originalName;
@override final  double? popularity;
@override@JsonKey(name: 'profile_path') final  String? profilePath;

/// Create a copy of People
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeopleCopyWith<_People> get copyWith => __$PeopleCopyWithImpl<_People>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PeopleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _People&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.id, id) || other.id == id)&&(identical(other.knownForDepartment, knownForDepartment) || other.knownForDepartment == knownForDepartment)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,gender,id,knownForDepartment,name,originalName,popularity,profilePath);

@override
String toString() {
  return 'People(adult: $adult, gender: $gender, id: $id, knownForDepartment: $knownForDepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath)';
}


}

/// @nodoc
abstract mixin class _$PeopleCopyWith<$Res> implements $PeopleCopyWith<$Res> {
  factory _$PeopleCopyWith(_People value, $Res Function(_People) _then) = __$PeopleCopyWithImpl;
@override @useResult
$Res call({
 bool? adult, int? gender, int? id,@JsonKey(name: 'known_for_department') String? knownForDepartment, String? name,@JsonKey(name: 'original_name') String? originalName, double? popularity,@JsonKey(name: 'profile_path') String? profilePath
});




}
/// @nodoc
class __$PeopleCopyWithImpl<$Res>
    implements _$PeopleCopyWith<$Res> {
  __$PeopleCopyWithImpl(this._self, this._then);

  final _People _self;
  final $Res Function(_People) _then;

/// Create a copy of People
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = freezed,Object? gender = freezed,Object? id = freezed,Object? knownForDepartment = freezed,Object? name = freezed,Object? originalName = freezed,Object? popularity = freezed,Object? profilePath = freezed,}) {
  return _then(_People(
adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,knownForDepartment: freezed == knownForDepartment ? _self.knownForDepartment : knownForDepartment // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
