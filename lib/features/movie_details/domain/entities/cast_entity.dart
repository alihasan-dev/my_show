class MovieCastEntity {
  final int? id;
  final List<Cast>? cast;
  final List<Crew>? crew;

  MovieCastEntity({
    this.id = -1,
    this.cast = const [],
    this.crew = const [],
  });
}

class Cast {
  final bool? adult;
  final int? gender;
  final int? id;
  final String? knownDepartment;
  final String? name;
  final String? originalName;
  final String? profilePath;
  final int? castId;
  final String? character;
  final String? creditId;
  final int? order;

  Cast({
    this.adult = false,
    this.gender = -1,
    this.id = -1,
    this.knownDepartment = '',
    this.name = '',
    this.originalName = '',
    this.profilePath = '',
    this.castId = -1,
    this.character = '',
    this.creditId = '',
    this.order = -1,
  });
}

class Crew {
  final bool? adult;
  final int? gender;
  final int? id;
  final String? knownDepartment;
  final String? name;
  final String? originalName;
  final String? profilePath;
  final String? creditId;
  final double? popularity;
  final String? department;
  final String? job;

  Crew({
    this.adult = false,
    this.gender = -1,
    this.id = -1,
    this.knownDepartment = '',
    this.name = '',
    this.originalName = '',
    this.profilePath = '',
    this.creditId = '',
    this.popularity = 0.0,
    this.department = '',
    this.job = ''
  });
}