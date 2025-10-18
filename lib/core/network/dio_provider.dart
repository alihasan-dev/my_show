import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../constants/app_strings.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: AppStrings.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(minutes: 5),
      headers: {
        'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3MjIyMjg2MDI0MzQyYTZjNGVmN2NhNDYwMzRmNGQ3MyIsIm5iZiI6MTcxNjU4MzA1NS44NDMwMDAyLCJzdWIiOiI2NjUwZmE4ZmQzNTEwZDY0YTEyMmRlMjIiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.pRv0jgEhiXzmeGo9598PjxyzVS-hIe5L7VYJQVQ4UKs',
        'Content-Type': 'application/json',
      },
    ),
  );

  // dio.interceptors.add(AppInterceptor());
  dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

  // dio.interceptors.add(
  //   PrettyDioLogger(
  //     requestHeader: true,
  //     requestBody: true,
  //     responseBody: true,
  //     responseHeader: false,
  //     error: true,
  //     compact: true,
  //     maxWidth: 90,
  //   ),
  // );
  return dio;
});