class EpisodeDetailsEntity {
  const EpisodeDetailsEntity({
    this.id,
    this.airDate,
    this.crew,
    this.episodeNumber,
    this.episodeType,
    this.guestStars,
    this.name,
    this.overview,
    this.productionCode,
    this.runtime,
    this.seasonNumber,
    this.stillPath,
    this.voteAverage,
    this.voteCount,
  });

  final int? id;
  final String? airDate;
  final List<EpisodeCrewEntity>? crew;
  final int? episodeNumber;
  final String? episodeType;
  final List<EpisodeGuestStarEntity>? guestStars;
  final String? name;
  final String? overview;
  final String? productionCode;
  final int? runtime;
  final int? seasonNumber;
  final String? stillPath;
  final double? voteAverage;
  final int? voteCount;
}

class EpisodeCrewEntity {
  const EpisodeCrewEntity({
    this.department,
    this.job,
    this.creditId,
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
  });

  final String? department;
  final String? job;
  final String? creditId;
  final bool? adult;
  final int? gender;
  final int? id;
  final String? knownForDepartment;
  final String? name;
  final String? originalName;
  final double? popularity;
  final String? profilePath;
}

class EpisodeGuestStarEntity {
  const EpisodeGuestStarEntity({
    this.character,
    this.creditId,
    this.order,
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
  });

  final String? character;
  final String? creditId;
  final int? order;
  final bool? adult;
  final int? gender;
  final int? id;
  final String? knownForDepartment;
  final String? name;
  final String? originalName;
  final double? popularity;
  final String? profilePath;
}