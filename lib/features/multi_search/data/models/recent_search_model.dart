// class RecentSearchModel {
//   String id;
//   String title;
//   String mediaType;
//   String posterPath;
//   String subtitle;

//   RecentSearchModel({
//     this.id = '',
//     this.title = '',
//     this.mediaType = '',
//     this.posterPath = '',
//     this.subtitle = ''
//   });

//   Map get toJson  => {
//     "id": id,
//     "title": title,
//     "mediaType": mediaType,
//     "posterPath": posterPath,
//     "subtitle": subtitle
//   };
// }


import '../../domain/entities/recent_search_entity.dart';

class RecentSearchModel extends RecentSearchEntity {
  
  RecentSearchModel({
    required super.id,
    required super.title,
    super.posterPath,
    required super.mediaType,
    super.subtitle,
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
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'posterPath': posterPath,
      'mediaType': mediaType,
      'subtitle': subtitle,
    };
  }

  factory RecentSearchModel.fromJson(Map<String, dynamic> json) {
    return RecentSearchModel(
      id: json['id'],
      title: json['title'],
      posterPath: json['posterPath'],
      mediaType: json['mediaType'],
      subtitle: json['subtitle'],
    );
  }

  RecentSearchEntity toEntity() {
    return RecentSearchEntity(
      id: id,
      title: title,
      posterPath: posterPath,
      mediaType: mediaType,
      subtitle: subtitle,
    );
  }
}



/**
 * 
{
  "id": 6193,
  "title": "Leonardo DiCaprio",
  "mediaType": "person",
  "posterPath": "...",
  "subtitle": "Actor"
}
 */