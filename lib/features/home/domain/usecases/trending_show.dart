import 'package:dartz/dartz.dart';
import 'package:my_show/features/home/domain/repository/home_repository.dart';

class TrendingShow {

  final HomeRepository homeRepository;

  TrendingShow(this.homeRepository);

  Future<Either<String, String>> getAllTrendingMovies() async {
    
  }

}