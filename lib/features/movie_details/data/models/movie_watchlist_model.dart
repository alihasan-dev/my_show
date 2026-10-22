import '../../../../features/movie_details/domain/entities/movie_watchlist_entity.dart';

class MovieWatchlistModel extends MovieWatchlistEntity {
  
  MovieWatchlistModel({
    required super.id,
    required super.title,
    super.posterPath,
    required super.mediaType,
    super.createdDate
  });

  factory MovieWatchlistModel.fromEntity(
    MovieWatchlistEntity entity,
  ) {
    return MovieWatchlistModel(
      id: entity.id,
      title: entity.title,
      posterPath: entity.posterPath,
      mediaType: entity.mediaType,
      createdDate: entity.createdDate
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'posterPath': posterPath,
      'mediaType': mediaType,
      'createdDate': createdDate
    };
  }

  factory MovieWatchlistModel.fromJson(Map<String, dynamic> json) {
    return MovieWatchlistModel(
      id: json['id'],
      title: json['title'],
      posterPath: json['posterPath'],
      mediaType: json['mediaType'],
      createdDate: json['createdDate']
    );
  }

  MovieWatchlistEntity toEntity() {
    return MovieWatchlistEntity(
      id: id,
      title: title,
      posterPath: posterPath,
      mediaType: mediaType,
      createdDate: createdDate
    );
  }
}