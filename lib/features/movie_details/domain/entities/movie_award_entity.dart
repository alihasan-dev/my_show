class MovieAwardEntity {

  final String? title;
  final String? year;
  final String? rated;
  final String? released;
  final String? runtime;
  final String? genre;
  final String? director;
  final String? writer;
  final String? actors;
  final String? plot;
  final String? language;
  final String? country;
  final String? awards;
  final String? poster;
  final List<Ratings>? ratings;
  final String? metascrore;
  final String? imdbRating;
  final String? imdbVotes;
  final String? imdbID;
  final String? type; 
  final String? dvd;
  final String? boxOffice;
  final String? production;
  final String? website;
  final String? respnse;

  MovieAwardEntity({
    this.title,
    this.year,
    this.rated,
    this.released,
    this.runtime,
    this.genre,
    this.director,
    this.writer,
    this.actors,
    this.plot,
    this.language,
    this.country,
    this.awards,
    this.poster,
    this.ratings,
    this.metascrore,
    this.imdbRating,
    this.imdbVotes,
    this.imdbID,
    this.type,
    this.dvd,
    this.boxOffice,
    this.production,
    this.website,
    this.respnse,
  });

}

class Ratings {
  final String? source;
  final String? value;

  Ratings({
    this.source,
    this.value
  });
}