class VideoEntity {
  final int? id;
  final List<Results>? results;

  VideoEntity({
    this.id,
    this.results,
  });
}

class Results {
  final String? id;
  final String? iso6391;
  final String? iso31661;
  final String? key;
  final String? name;
  final String? site;
  final int? size;
  final String? type;
  final bool? official;
  final String? publishedAt;

  Results({
    this.id,
    this.iso6391,
    this.iso31661,
    this.key,
    this.name,
    this.site,
    this.size,
    this.type,
    this.official,
    this.publishedAt,
  });
}