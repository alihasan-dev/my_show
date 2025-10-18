

class MovieDetailEntity {
  final bool? adult;
  final String? backdropPath;
  final int? budget;
  final List<GenreEntity>? genres;
  final String? homepage;
  final int? id;
  final String? imdbId;
  final List<String>? originCountry;
  final String? originalLanguage;
  final String? originalTitle;
  final String? originalName;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final List<ProductionCompanyEntity>? productionCompanies;
  final List<ProductionCountryEntity>? productionCountries;
  final String? releaseDate;
  final int? revenue;
  final int? runtime;
  final List<SpokenLanguageEntity>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? type;
  final String? title;
  final String? name;
  final bool? video;
  final int? numberOfEpisodes;
  final int? numberOfSeasons;
  final List<Networks>? networks;
  final List<Seasons>? seasons;
  final double? voteAverage;
  final int? voteCount;

  const MovieDetailEntity({
    this.adult,
    this.backdropPath,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originCountry,
    this.originalLanguage,
    this.originalTitle,
    this.originalName,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.type,
    this.tagline,
    this.title,
    this.name,
    this.video,
    this.numberOfEpisodes,
    this.numberOfSeasons,
    this.networks,
    this.seasons,
    this.voteAverage,
    this.voteCount,
  });
}

class GenreEntity {
  final int? id;
  final String? name;

  const GenreEntity({this.id, this.name});
}

class ProductionCompanyEntity {
  final int? id;
  final String? logoPath;
  final String? name;
  final String? originCountry;

  const ProductionCompanyEntity({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });
}

class ProductionCountryEntity {
  final String? iso31661;
  final String? name;

  const ProductionCountryEntity({
    this.iso31661,
    this.name,
  });
}

class SpokenLanguageEntity {
  final String? englishName;
  final String? iso6391;
  final String? name;

  const SpokenLanguageEntity({
    this.englishName,
    this.iso6391,
    this.name,
  });
}

class Networks {
  final int? id;
  final String? name;
  final String? logoPath;
  final String? originCountry;

  const Networks({
    this.id,
    this.name,
    this.logoPath,
    this.originCountry,
  });
}


class Seasons {
  final String? airDate;
  final int? episodeCount;
  final int? id;
  final String? name;
  final String? overview;
  final String? posterPath;
  final int? seasonNumber;
  final double? voteAverage;

  const Seasons({
    this.airDate,
    this.episodeCount,
    this.id,
    this.name,
    this.overview,
    this.posterPath,
    this.seasonNumber,
    this.voteAverage
  });
}