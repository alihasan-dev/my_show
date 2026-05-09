import 'package:freezed_annotation/freezed_annotation.dart';
part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
sealed class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    final int? id,
    final int? page,  
    final List<Review>? results,
    @JsonKey(name: 'total_pages') final int? totalPages,
    @JsonKey(name: 'total_results') final int? totalResults,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);
}

@freezed
sealed class Review with _$Review {
  const factory Review({
    final String? author,
    @JsonKey(name: 'author_details') final AuthorDetails? authorDetails,
    final String? content,
    @JsonKey(name: 'created_at') final String? createdAt,
    final String? id,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    final String? url
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
} 

@freezed
sealed class AuthorDetails with _$AuthorDetails {
  const factory AuthorDetails({
    final String? name,
    final String? username,
    @JsonKey(name: 'avatar_path') final String? avatarPath,
    final double? rating
  }) = _AuthorDetails;

  factory AuthorDetails.fromJson(Map<String, dynamic> json) => _$AuthorDetailsFromJson(json);
} 