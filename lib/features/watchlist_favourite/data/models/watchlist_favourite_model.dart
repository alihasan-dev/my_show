class WatchlistFavouriteModel {
  
  final String id;
  final String title;
  final String posterPath;
  final String mediaType;
  final String createdDate;

  WatchlistFavouriteModel({
    this.id = '',
    this.title = '',
    this.posterPath = '',
    this.mediaType = '',
    this.createdDate = '',
  });

  factory WatchlistFavouriteModel.fromJson(Map<String, dynamic> json) {
    return WatchlistFavouriteModel(
      id: json['id'],
      title: json['title'],
      posterPath: json['posterPath'],
      mediaType: json['mediaType'],
      createdDate: json['createdDate']
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

}