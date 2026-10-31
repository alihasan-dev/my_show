class SeasonDetailsEntity {
  const SeasonDetailsEntity({
    this.id,
    this.mongoId,
    this.airDate,
    this.episodes,
    this.name,
    this.networks,
    this.overview,
    this.posterPath,
    this.seasonNumber,
    this.voteAverage,
  });

  final int? id;

  /// Maps to the `_id` key of the response (Dart fields cannot start with `_`).
  final String? mongoId;

  final String? airDate;
  final List<EpisodeEntity>? episodes;
  final String? name;
  final List<NetworkEntity>? networks;
  final String? overview;
  final String? posterPath;
  final int? seasonNumber;
  final double? voteAverage;
}

class EpisodeEntity {
  const EpisodeEntity({
    this.airDate,
    this.crew,
    this.episodeNumber,
    this.episodeType,
    this.guestStars,
    this.id,
    this.name,
    this.overview,
    this.productionCode,
    this.runtime,
    this.seasonNumber,
    this.showId,
    this.stillPath,
    this.voteAverage,
    this.voteCount,
  });

  final String? airDate;
  final List<CrewEntity>? crew;
  final int? episodeNumber;
  final String? episodeType;
  final List<GuestStarEntity>? guestStars;
  final int? id;
  final String? name;
  final String? overview;
  final String? productionCode;
  final int? runtime;
  final int? seasonNumber;
  final int? showId;
  final String? stillPath;
  final double? voteAverage;
  final int? voteCount;
}

class CrewEntity {
  const CrewEntity({
    this.adult,
    this.creditId,
    this.department,
    this.gender,
    this.id,
    this.job,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
  });

  final bool? adult;
  final String? creditId;
  final String? department;
  final int? gender;
  final int? id;
  final String? job;
  final String? knownForDepartment;
  final String? name;
  final String? originalName;
  final double? popularity;
  final String? profilePath;
}

class GuestStarEntity {
  const GuestStarEntity({
    this.adult,
    this.character,
    this.creditId,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.order,
    this.originalName,
    this.popularity,
    this.profilePath,
  });

  final bool? adult;
  final String? character;
  final String? creditId;
  final int? gender;
  final int? id;
  final String? knownForDepartment;
  final String? name;
  final int? order;
  final String? originalName;
  final double? popularity;
  final String? profilePath;
}

class NetworkEntity {
  const NetworkEntity({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  final int? id;
  final String? logoPath;
  final String? name;
  final String? originCountry;
}
