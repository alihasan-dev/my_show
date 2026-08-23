import 'package:freezed_annotation/freezed_annotation.dart';
part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
sealed class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    int? id,
    int? page,  
    List<Review>? results,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResults,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);
}

@freezed
sealed class Review with _$Review {
  const factory Review({
    String? author,
    @JsonKey(name: 'author_details') AuthorDetails? authorDetails,
    String? content,
    @JsonKey(name: 'created_at') String? createdAt,
    String? id,
    @JsonKey(name: 'updated_at') String? updatedAt,
    String? url
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
} 

@freezed
sealed class AuthorDetails with _$AuthorDetails {
  const factory AuthorDetails({
    String? name,
    String? username,
    @JsonKey(name: 'avatar_path') String? avatarPath,
    double? rating
  }) = _AuthorDetails;

  factory AuthorDetails.fromJson(Map<String, dynamic> json) => _$AuthorDetailsFromJson(json);
} 