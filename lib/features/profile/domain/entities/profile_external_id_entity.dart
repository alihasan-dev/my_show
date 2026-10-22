class ProfileExternalIdEntity {
  int? id;
  String? freebaseMid;
  String? freebaseId;
  String? imdbId;
  String? tvrageId;
  String? wikidataId;
  String? facebookId;
  String? instagramId;
  String? tiktokId;
  String? twitterId;
  String? youtubeId;


  ProfileExternalIdEntity({
    this.id = -1,
    this.freebaseMid = '',
    this.freebaseId = '',
    this.tvrageId = '',
    this.imdbId = '',
    this.wikidataId = '',
    this.facebookId = '',
    this.instagramId = '',
    this.tiktokId = '',
    this.twitterId = '',
    this.youtubeId = '',
  });
}