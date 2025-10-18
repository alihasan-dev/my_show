class MovieKeywordsEntity {
  final int? id;
  final List<Keyword> keywords;

  MovieKeywordsEntity({
    this.id = -1,
    this.keywords = const []
  });
}
class Keyword {
  final int? id;
  final String? name;

  Keyword({
    this.id = -1,
    this.name = ''
  });
}