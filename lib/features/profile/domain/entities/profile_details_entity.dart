class ProfileDetailsEntity {
  final bool? adult;
  final List<String>? alsoKnownAs;
  final String? biography;
  final String? birthday;
  final String? deathDay;
  final int? gender;
  final String? homepage;
  final int? id;
  final String? imdbId;
  final String? knownFor;
  final String? name;
  final String? birthPlace;
  final double? popularity;
  final String? profilePath;

  ProfileDetailsEntity({
    this.adult = false,
    this.alsoKnownAs = const [],
    this.biography = '',
    this.birthday = '',
    this.deathDay = '',
    this.gender = -1,
    this.homepage = '',
    this.id = -1,
    this.imdbId = '',
    this.knownFor = '',
    this.name = '',
    this.birthPlace = '',
    this.popularity = 0.0,
    this.profilePath = ''
  });
}