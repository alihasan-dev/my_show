class ReviewEntity {
  final String? author;
  final AuthorDetails? authorDetails;
  final String? content;
  final String? createdAt;
  final String? updatedAt;
  final String? id;
  final String? url;
  bool isReadMre;

  ReviewEntity({
    this.author,
    this.authorDetails,
    this.content,
    this.createdAt,
    this.updatedAt,
    this.id,
    this.url,
    this.isReadMre = false
  });
}

class AuthorDetails {
  final String? name;
  final String? username;
  final String? avatarPath;
  final double? rating;

  AuthorDetails({
    this.name,
    this.username,
    this.avatarPath,
    this.rating
  });
}