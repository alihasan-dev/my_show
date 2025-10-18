import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/network/dio_provider.dart';
import '../models/trending_movies_model.dart';

abstract interface class DashboardRemoteDatasource {

  Future<TrendingMoviesResponse> trendingMovies(); 

  Future<TrendingMoviesResponse> popularMovies({required int page}); 

  Future<TrendingMoviesResponse> topRatedMovies({required int page}); 

  Future<TrendingMoviesResponse> nowPlayingMovies({required int page}); 

  Future<TrendingMoviesResponse> upcomingMovies({required int page}); 
}

class DashboardRemoteDatasourceImp implements DashboardRemoteDatasource {

  final Dio dioClient;

  DashboardRemoteDatasourceImp(this.dioClient);

  @override
  Future<TrendingMoviesResponse> trendingMovies() async {
    try {
      final response = await dioClient.get('/3/trending/all/day?language=en-US');
      if (response.statusCode == 200) {
        return TrendingMoviesResponse.fromJson(response.data);
      }
      throw Exception();
    } catch (e) {
      throw Exception();   
    }
  }
  
  @override
  Future<TrendingMoviesResponse> popularMovies({required int page}) async {
    try {
      final response = await dioClient.get('/3/movie/popular?language=en-US&page=$page');
      if (response.statusCode == 200) {
        return TrendingMoviesResponse.fromJson(response.data);
      }
      throw Exception();
    } catch (e) {
      throw Exception();   
    }
  }
  
  @override
  Future<TrendingMoviesResponse> topRatedMovies({required int page}) async {
    try {
      final response = await dioClient.get('/3/movie/top_rated?language=en-US&page=$page');
      if (response.statusCode == 200) {
        return TrendingMoviesResponse.fromJson(response.data);
      }
      throw Exception();
    } catch (e) {
      throw Exception();   
    }
  }

  @override
  Future<TrendingMoviesResponse> nowPlayingMovies({required int page}) async {
    try {
      final response = await dioClient.get('/3/movie/now_playing?language=en-US&page=$page');
      if (response.statusCode == 200) {
        return TrendingMoviesResponse.fromJson(response.data);
      }
      throw Exception();
    } catch (e) {
      throw Exception();   
    }
  }

  @override
  Future<TrendingMoviesResponse> upcomingMovies({required int page}) async {
    try {
      final response = await dioClient.get('/3/movie/upcoming?language=en-US&page=$page');
      if (response.statusCode == 200) {
        return TrendingMoviesResponse.fromJson(response.data);
      }
      throw Exception();
    } catch (e) {
      throw Exception();   
    }
  }
}

final dashboardRemoteDataProvider = Provider<DashboardRemoteDatasource>((ref) {
  final apiClient = ref.read(dioProvider);
  return DashboardRemoteDatasourceImp(apiClient);
});