class ReleaseDatesEntity {
  int? id;
  List<ReleaseResults>? results;

  ReleaseDatesEntity({
    this.id,
    this.results = const []
  });
}

class ReleaseResults {
  String? iso3166;
  List<ReleaseDates>? releaseDates;

  ReleaseResults({
    this.iso3166,
    this.releaseDates = const []
  });
}

class ReleaseDates {
  String? certification;
  List<String>? descriptors;
  String? iso639;
  String? note;
  String? releaseDates;
  int? type;

  ReleaseDates({
    this.certification,
    this.descriptors = const [],
    this.iso639,
    this.note,
    this.releaseDates,
    this.type
  });
}