import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/network/dio_provider.dart';
import '../../../../core/utils/custom_exception.dart';
import '../models/trending_tv_show_model.dart';

abstract interface class TvShowDataSource {

  Future<TrendingTVShowModel> trendingTvShow();

  Future<TrendingTVShowModel> onAirShows();

  Future<TrendingTVShowModel> popularShows();

  Future<TrendingTVShowModel> topRatedShows();

  Future<TrendingTVShowModel> upcomingShows();

}

class TvShowDataSourceImp implements TvShowDataSource {

  final Dio apiClient;

  TvShowDataSourceImp(this.apiClient);

  @override
  Future<TrendingTVShowModel> trendingTvShow() async {
    try {
      final response = await apiClient.get('/3/trending/tv/day');
      if (response.statusCode == 200) {
        return TrendingTVShowModel.fromJson(response.data);
      }
      throw CustomFailureException(message: 'Something went wrong');
    } catch (e) {
      throw CustomFailureException(message: 'Something went wrong');
    }
  }
  
  @override
  Future<TrendingTVShowModel> onAirShows() async {
    try {
      final response = await apiClient.get('/3/tv/on_the_air');
      if (response.statusCode == 200) {
        return TrendingTVShowModel.fromJson(response.data);
      }
      throw CustomFailureException(message: 'Something went wrong');
    } catch (e) {
      throw CustomFailureException(message: 'Something went wrong');
    }
  }
  
  @override
  Future<TrendingTVShowModel> popularShows() async {
    try {
      final response = await apiClient.get('/3/tv/popular');
      if (response.statusCode == 200) {
        return TrendingTVShowModel.fromJson(response.data);
      }
      throw CustomFailureException(message: 'Something went wrong');
    } catch (e) {
      throw CustomFailureException(message: 'Something went wrong');
    }
  }
  
  @override
  Future<TrendingTVShowModel> topRatedShows() async {
    try {
      final response = await apiClient.get('/3/tv/top_rated');
      if (response.statusCode == 200) {
        return TrendingTVShowModel.fromJson(response.data);
      }
      throw CustomFailureException(message: 'Something went wrong');
    } catch (e) {
      throw CustomFailureException(message: 'Something went wrong');
    }
  }
  
  @override
  Future<TrendingTVShowModel> upcomingShows() async {
    try {
      final response = await apiClient.get('/3/tv/airing_today');
      if (response.statusCode == 200) {
        return TrendingTVShowModel.fromJson(response.data);
      }
      throw CustomFailureException(message: 'Something went wrong');
    } catch (e) {
      throw CustomFailureException(message: 'Something went wrong');
    }
  }

}

final tvShowDataSourceProvider = Provider<TvShowDataSource>((ref) {
  return TvShowDataSourceImp(ref.read(dioProvider));
});