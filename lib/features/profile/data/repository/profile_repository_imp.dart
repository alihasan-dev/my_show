import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/core/utils/custom_exception.dart';
import '/features/profile/data/datasource/profile_datasource.dart';
import '/features/profile/domain/entities/movie_credit_entity.dart';
import '/features/profile/domain/entities/profile_details_entity.dart';
import '/features/profile/domain/repository/profile_repository.dart';
import '../../../../core/network/check_connectivity.dart';

class ProfileRepositoryImp implements ProfileRepository {

  final ProfileDatasource profileDatasource;

  final CheckConnectivity connectivity;

  ProfileRepositoryImp(this.profileDatasource, this.connectivity);
  
  @override
  Future<Either<CustomFailureException, MovieCreditEntity>> creditMovies({required String userId, required String type}) async {
    if (await connectivity.isConnected) {
      final response = await profileDatasource.creditMovies(userId: userId, type: type);
      return Right(MovieCreditEntity(
        id: response.id,
        castEntity: response.cast?.map((item) {
          return CastEntity(
            adult: item.adult,
            backdropPath: item.backdropPath,
            genreId: item.genreId,
            id: item.id,
            originalLanguage: item.originalLanguage,
            originalTitle: item.originalTitle,
            overview: item.overview,
            popularity: item.popularity,
            posterPath: item.posterPath,
            releaseDate: item.releaseDate,
            title: item.title,
            video: item.video,
            voteAverage: item.voteAverage,
            voteCount: item.voteCount,
            character: item.character,
            creditId: item.creditId,
            order: item.order
          );
        }).toList()
      ));
    } else {
      return Left(CustomFailureException(
        message: 'No internet connection'
      ));
    }
  }

  @override
  Future<Either<CustomFailureException, ProfileDetailsEntity>> profileDetails({required String userId}) async {
    if (await connectivity.isConnected) {
      final response = await profileDatasource.profileDetails(userId: userId);
      return Right(ProfileDetailsEntity(
        adult: response.adult,
        alsoKnownAs: response.knownFor,
        biography: response.biography,
        birthPlace: response.birthPlace,
        deathDay: response.deathday,
        gender: response.gender,
        homepage: response.homepage,
        id: response.id,
        imdbId: response.imdbId,
        knownFor: response.knownForDepartment,
        name: response.name,
        birthday: response.birthday,
        popularity: response.popularity,
        profilePath: response.profilePath
      ));
    } else {
      return Left(CustomFailureException(
        message: 'No internet connection'
      ));
    }
  }

}

final profileRepoProvider = Provider<ProfileRepository>((ref) {
  final profileDataSource = ref.read(profileDataSourceProvider);
  final connectivity = ref.read(connectivityProvider);
  return ProfileRepositoryImp(profileDataSource, connectivity);
});

