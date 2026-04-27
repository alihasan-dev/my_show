import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final baseURL = dotenv.get('BASE_URL');
  final key = dotenv.get('API_KEY');
  final dio = Dio(
    BaseOptions(
      baseUrl: baseURL,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(minutes: 5),
      headers: {
        'Authorization': 'Bearer $key',
        'Content-Type': 'application/json',
      },
    ),
  );

  dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

  return dio;
});