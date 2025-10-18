import 'package:dartz/dartz.dart';

abstract interface class HomeRepository {

  Future<Either<String, String>> getAllTrendingMovies();
}