// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewModel {

 int? get id; int? get page; List<Review>? get results;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'total_results') int? get totalResults;
/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewModelCopyWith<ReviewModel> get copyWith => _$ReviewModelCopyWithImpl<ReviewModel>(this as ReviewModel, _$identity);

  /// Serializes this ReviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,page,const DeepCollectionEquality().hash(results),totalPages,totalResults);

@override
String toString() {
  return 'ReviewModel(id: $id, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class $ReviewModelCopyWith<$Res>  {
  factory $ReviewModelCopyWith(ReviewModel value, $Res Function(ReviewModel) _then) = _$ReviewModelCopyWithImpl;
@useResult
$Res call({
 int? id, int? page, List<Review>? results,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_results') int? totalResults
});




}
/// @nodoc
class _$ReviewModelCopyWithImpl<$Res>
    implements $ReviewModelCopyWith<$Res> {
  _$ReviewModelCopyWithImpl(this._self, this._then);

  final ReviewModel _self;
  final $Res Function(ReviewModel) _then;

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? page = freezed,Object? results = freezed,Object? totalPages = freezed,Object? totalResults = freezed,}) {
  return _then(ReviewModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Review>?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewModel].
extension ReviewModelPatterns on ReviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewModel value)  $default,){
final _that = this;
switch (_that) {
case _ReviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? page,  List<Review>? results, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
return $default(_that.id,_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? page,  List<Review>? results, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults)  $default,) {final _that = this;
switch (_that) {
case _ReviewModel():
return $default(_that.id,_that.page,_that.results,_that.totalPages,_that.totalResults);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? page,  List<Review>? results, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_results')  int? totalResults)?  $default,) {final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
return $default(_that.id,_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewModel implements ReviewModel {
  const _ReviewModel({this.id, this.page,  List<Review>? results, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'total_results') this.totalResults}): _results = results;
  factory _ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);

@override final  int? id;
@override final  int? page;
 final  List<Review>? _results;
@override List<Review>? get results {
  final value = _results;
  if (value == null) return null;
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'total_results') final  int? totalResults;

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewModelCopyWith<_ReviewModel> get copyWith => __$ReviewModelCopyWithImpl<_ReviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,page,const DeepCollectionEquality().hash(_results),totalPages,totalResults);

@override
String toString() {
  return 'ReviewModel(id: $id, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class _$ReviewModelCopyWith<$Res> implements $ReviewModelCopyWith<$Res> {
  factory _$ReviewModelCopyWith(_ReviewModel value, $Res Function(_ReviewModel) _then) = __$ReviewModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? page, List<Review>? results,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_results') int? totalResults
});




}
/// @nodoc
class __$ReviewModelCopyWithImpl<$Res>
    implements _$ReviewModelCopyWith<$Res> {
  __$ReviewModelCopyWithImpl(this._self, this._then);

  final _ReviewModel _self;
  final $Res Function(_ReviewModel) _then;

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? page = freezed,Object? results = freezed,Object? totalPages = freezed,Object? totalResults = freezed,}) {
  return _then(_ReviewModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,results: freezed == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Review>?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalResults: freezed == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Review {

 String? get author;@JsonKey(name: 'author_details') AuthorDetails? get authorDetails; String? get content;@JsonKey(name: 'created_at') String? get createdAt; String? get id;@JsonKey(name: 'updated_at') String? get updatedAt; String? get url;
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCopyWith<Review> get copyWith => _$ReviewCopyWithImpl<Review>(this as Review, _$identity);

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Review&&(identical(other.author, author) || other.author == author)&&(identical(other.authorDetails, authorDetails) || other.authorDetails == authorDetails)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,author,authorDetails,content,createdAt,id,updatedAt,url);

@override
String toString() {
  return 'Review(author: $author, authorDetails: $authorDetails, content: $content, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, url: $url)';
}


}

/// @nodoc
abstract mixin class $ReviewCopyWith<$Res>  {
  factory $ReviewCopyWith(Review value, $Res Function(Review) _then) = _$ReviewCopyWithImpl;
@useResult
$Res call({
 String? author,@JsonKey(name: 'author_details') AuthorDetails? authorDetails, String? content,@JsonKey(name: 'created_at') String? createdAt, String? id,@JsonKey(name: 'updated_at') String? updatedAt, String? url
});


$AuthorDetailsCopyWith<$Res>? get authorDetails;

}
/// @nodoc
class _$ReviewCopyWithImpl<$Res>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._self, this._then);

  final Review _self;
  final $Res Function(Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? author = freezed,Object? authorDetails = freezed,Object? content = freezed,Object? createdAt = freezed,Object? id = freezed,Object? updatedAt = freezed,Object? url = freezed,}) {
  return _then(Review(
author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,authorDetails: freezed == authorDetails ? _self.authorDetails : authorDetails // ignore: cast_nullable_to_non_nullable
as AuthorDetails?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorDetailsCopyWith<$Res>? get authorDetails {
    if (_self.authorDetails == null) {
    return null;
  }

  return $AuthorDetailsCopyWith<$Res>(_self.authorDetails!, (value) {
    return _then(_self.copyWith(authorDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [Review].
extension ReviewPatterns on Review {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Review value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Review value)  $default,){
final _that = this;
switch (_that) {
case _Review():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Review value)?  $default,){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? author, @JsonKey(name: 'author_details')  AuthorDetails? authorDetails,  String? content, @JsonKey(name: 'created_at')  String? createdAt,  String? id, @JsonKey(name: 'updated_at')  String? updatedAt,  String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.author,_that.authorDetails,_that.content,_that.createdAt,_that.id,_that.updatedAt,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? author, @JsonKey(name: 'author_details')  AuthorDetails? authorDetails,  String? content, @JsonKey(name: 'created_at')  String? createdAt,  String? id, @JsonKey(name: 'updated_at')  String? updatedAt,  String? url)  $default,) {final _that = this;
switch (_that) {
case _Review():
return $default(_that.author,_that.authorDetails,_that.content,_that.createdAt,_that.id,_that.updatedAt,_that.url);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? author, @JsonKey(name: 'author_details')  AuthorDetails? authorDetails,  String? content, @JsonKey(name: 'created_at')  String? createdAt,  String? id, @JsonKey(name: 'updated_at')  String? updatedAt,  String? url)?  $default,) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.author,_that.authorDetails,_that.content,_that.createdAt,_that.id,_that.updatedAt,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Review implements Review {
  const _Review({this.author, @JsonKey(name: 'author_details') this.authorDetails, this.content, @JsonKey(name: 'created_at') this.createdAt, this.id, @JsonKey(name: 'updated_at') this.updatedAt, this.url});
  factory _Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

@override final  String? author;
@override@JsonKey(name: 'author_details') final  AuthorDetails? authorDetails;
@override final  String? content;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override final  String? id;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override final  String? url;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCopyWith<_Review> get copyWith => __$ReviewCopyWithImpl<_Review>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Review&&(identical(other.author, author) || other.author == author)&&(identical(other.authorDetails, authorDetails) || other.authorDetails == authorDetails)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,author,authorDetails,content,createdAt,id,updatedAt,url);

@override
String toString() {
  return 'Review(author: $author, authorDetails: $authorDetails, content: $content, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, url: $url)';
}


}

/// @nodoc
abstract mixin class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) _then) = __$ReviewCopyWithImpl;
@override @useResult
$Res call({
 String? author,@JsonKey(name: 'author_details') AuthorDetails? authorDetails, String? content,@JsonKey(name: 'created_at') String? createdAt, String? id,@JsonKey(name: 'updated_at') String? updatedAt, String? url
});


@override $AuthorDetailsCopyWith<$Res>? get authorDetails;

}
/// @nodoc
class __$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(this._self, this._then);

  final _Review _self;
  final $Res Function(_Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? author = freezed,Object? authorDetails = freezed,Object? content = freezed,Object? createdAt = freezed,Object? id = freezed,Object? updatedAt = freezed,Object? url = freezed,}) {
  return _then(_Review(
author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,authorDetails: freezed == authorDetails ? _self.authorDetails : authorDetails // ignore: cast_nullable_to_non_nullable
as AuthorDetails?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorDetailsCopyWith<$Res>? get authorDetails {
    if (_self.authorDetails == null) {
    return null;
  }

  return $AuthorDetailsCopyWith<$Res>(_self.authorDetails!, (value) {
    return _then(_self.copyWith(authorDetails: value));
  });
}
}


/// @nodoc
mixin _$AuthorDetails {

 String? get name; String? get username;@JsonKey(name: 'avatar_path') String? get avatarPath; double? get rating;
/// Create a copy of AuthorDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorDetailsCopyWith<AuthorDetails> get copyWith => _$AuthorDetailsCopyWithImpl<AuthorDetails>(this as AuthorDetails, _$identity);

  /// Serializes this AuthorDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorDetails&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.avatarPath, avatarPath) || other.avatarPath == avatarPath)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,username,avatarPath,rating);

@override
String toString() {
  return 'AuthorDetails(name: $name, username: $username, avatarPath: $avatarPath, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $AuthorDetailsCopyWith<$Res>  {
  factory $AuthorDetailsCopyWith(AuthorDetails value, $Res Function(AuthorDetails) _then) = _$AuthorDetailsCopyWithImpl;
@useResult
$Res call({
 String? name, String? username,@JsonKey(name: 'avatar_path') String? avatarPath, double? rating
});




}
/// @nodoc
class _$AuthorDetailsCopyWithImpl<$Res>
    implements $AuthorDetailsCopyWith<$Res> {
  _$AuthorDetailsCopyWithImpl(this._self, this._then);

  final AuthorDetails _self;
  final $Res Function(AuthorDetails) _then;

/// Create a copy of AuthorDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? username = freezed,Object? avatarPath = freezed,Object? rating = freezed,}) {
  return _then(AuthorDetails(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,avatarPath: freezed == avatarPath ? _self.avatarPath : avatarPath // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorDetails].
extension AuthorDetailsPatterns on AuthorDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorDetails value)  $default,){
final _that = this;
switch (_that) {
case _AuthorDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorDetails value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? username, @JsonKey(name: 'avatar_path')  String? avatarPath,  double? rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorDetails() when $default != null:
return $default(_that.name,_that.username,_that.avatarPath,_that.rating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? username, @JsonKey(name: 'avatar_path')  String? avatarPath,  double? rating)  $default,) {final _that = this;
switch (_that) {
case _AuthorDetails():
return $default(_that.name,_that.username,_that.avatarPath,_that.rating);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? username, @JsonKey(name: 'avatar_path')  String? avatarPath,  double? rating)?  $default,) {final _that = this;
switch (_that) {
case _AuthorDetails() when $default != null:
return $default(_that.name,_that.username,_that.avatarPath,_that.rating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthorDetails implements AuthorDetails {
  const _AuthorDetails({this.name, this.username, @JsonKey(name: 'avatar_path') this.avatarPath, this.rating});
  factory _AuthorDetails.fromJson(Map<String, dynamic> json) => _$AuthorDetailsFromJson(json);

@override final  String? name;
@override final  String? username;
@override@JsonKey(name: 'avatar_path') final  String? avatarPath;
@override final  double? rating;

/// Create a copy of AuthorDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorDetailsCopyWith<_AuthorDetails> get copyWith => __$AuthorDetailsCopyWithImpl<_AuthorDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthorDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorDetails&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.avatarPath, avatarPath) || other.avatarPath == avatarPath)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,username,avatarPath,rating);

@override
String toString() {
  return 'AuthorDetails(name: $name, username: $username, avatarPath: $avatarPath, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$AuthorDetailsCopyWith<$Res> implements $AuthorDetailsCopyWith<$Res> {
  factory _$AuthorDetailsCopyWith(_AuthorDetails value, $Res Function(_AuthorDetails) _then) = __$AuthorDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? username,@JsonKey(name: 'avatar_path') String? avatarPath, double? rating
});




}
/// @nodoc
class __$AuthorDetailsCopyWithImpl<$Res>
    implements _$AuthorDetailsCopyWith<$Res> {
  __$AuthorDetailsCopyWithImpl(this._self, this._then);

  final _AuthorDetails _self;
  final $Res Function(_AuthorDetails) _then;

/// Create a copy of AuthorDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? username = freezed,Object? avatarPath = freezed,Object? rating = freezed,}) {
  return _then(_AuthorDetails(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,avatarPath: freezed == avatarPath ? _self.avatarPath : avatarPath // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
