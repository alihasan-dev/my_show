/// Nullable entity model for a single episode details response.
///
/// Every field is nullable (`?`) so missing or `null` values in the payload are
/// handled without throwing — e.g. `profile_path` is `null` for some guest
/// stars, and `production_code` can be an empty string.
/// Intentionally contains no `fromJson` / `toJson`; mapping belongs to the
/// data layer.
///
/// The nested crew and guest-star models are named `EpisodeCrewEntity` and
/// `EpisodeGuestStarEntity` so this file stays self-contained and does not
/// clash with `CrewEntity` / `GuestStarEntity` if you keep the season model
/// alongside it.

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