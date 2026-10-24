import '../../domain/entities/recent_search_entity.dart';

class RecentSearchModel extends RecentSearchEntity {
  
  RecentSearchModel({
    required super.id,
    required super.title,
    super.posterPath,
    required super.mediaType,
    super.subtitle,
    super.createdDate
  });

  factory RecentSearchModel.fromEntity(
    RecentSearchEntity entity,
  ) {
    return RecentSearchModel(
      id: entity.id,
      title: entity.title,
      posterPath: entity.posterPath,
      mediaType: entity.mediaType,
      subtitle: entity.subtitle,
      createdDate: entity.createdDate
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'posterPath': posterPath,
      'mediaType': mediaType,
      'subtitle': subtitle,
      'createdDate': createdDate
    };
  }

  factory RecentSearchModel.fromJson(Map<String, dynamic> json) {
    return RecentSearchModel(
      id: json['id'],
      title: json['title'],
      posterPath: json['posterPath'],
      mediaType: json['mediaType'],
      subtitle: json['subtitle'],
      createdDate: json['createdDate']
    );
  }

  RecentSearchEntity toEntity() {
    return RecentSearchEntity(
      id: id,
      title: title,
      posterPath: posterPath,
      mediaType: mediaType,
      subtitle: subtitle,
      createdDate: createdDate
    );
  }
}