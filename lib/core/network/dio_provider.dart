import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants/app_strings.dart';

final dioProvider = Provider<Dio>((ref) {
  String key = '';
  if (kIsWeb || kIsWasm) {
    key = const String.fromEnvironment('API_KEY');
  } else {
    key = dotenv.get('API_KEY');
  }
  final dio = Dio(
    BaseOptions(
      baseUrl: AppStrings.baseURL,
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