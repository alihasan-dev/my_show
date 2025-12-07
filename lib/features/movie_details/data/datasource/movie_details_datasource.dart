import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/video_model.dart';
import '/core/network/api_end_points.dart';
import '/core/network/dio_provider.dart';
import '/features/movie/data/models/trending_movies_model.dart';
import '/features/movie_details/data/models/cast_model.dart';
import '/features/movie_details/data/models/movie_keyword_model.dart';
import '../models/movie_details_model.dart';

abstract interface class MovieDetailsRemoteDatasource {

  Future<MovieDetailsModel> movieDetails({required String id, required String type}); 

  Future<CastModel> movieCast({required String id, required String type}); 

  Future<TrendingMoviesResponse> movieRecommentation({required String id, required String type}); 

  Future<MovieKeywordModel> movieKeywords({required String id, required String type}); 

  Future<VideoModel> movieVideo({required String id, required String type}); 
}

class MovieDetailsRemoteDatasourceImp implements MovieDetailsRemoteDatasource {

  final Dio dioClient;
  MovieDetailsRemoteDatasourceImp(this.dioClient);

  @override
  Future<MovieDetailsModel> movieDetails({required String id, required String type}) async {
    try {
      final response = await dioClient.get('${ApiEndPoints.movieDetails}$type/$id');
      if (response.statusCode == 200) {
        return MovieDetailsModel.fromJson(response.data);
      }
      throw Exception();
    } catch (e) {
      throw Exception();   
    }
  }

  @override
  Future<CastModel> movieCast({required String id, required String type}) async {
    try {
      final response = await dioClient.get('/3/$type/$id/credits');
      if (response.statusCode == 200) {
        return CastModel.fromJson(response.data);
      }
      throw Exception();
    } catch (e) {
      throw Exception();   
    }
  }

  @override
  Future<TrendingMoviesResponse> movieRecommentation({required String id, required String type}) async {
    try {
      final response = await dioClient.get('/3/$type/$id/recommendations');
      if (response.statusCode == 200) {
        return TrendingMoviesResponse.fromJson(response.data);
      }
      throw Exception();
    } catch (e) {
      throw Exception();   
    }
  }
  
  @override
  Future<MovieKeywordModel> movieKeywords({required String id, required String type}) async {
    try {
      final response = await dioClient.get('/3/$type/$id/keywords');
      if (response.statusCode == 200) {
        return MovieKeywordModel.fromJson(response.data);
      }
      throw Exception();
    } catch (e) {
      throw Exception();   
    }
  }
  
  @override
  Future<VideoModel> movieVideo({required String id, required String type}) async {
    try {
      final response = await dioClient.get('/3/$type/$id/videos');
      if (response.statusCode == 200) {
        return VideoModel.fromJson(response.data);
      }
      throw Exception();
    } catch (e) {
      throw Exception();   
    }
  }
}

final movieDetailsRemoteDataSourceProvider = Provider<MovieDetailsRemoteDatasource>((ref) {
  final apiClient = ref.read(dioProvider);
  return MovieDetailsRemoteDatasourceImp(apiClient);
});