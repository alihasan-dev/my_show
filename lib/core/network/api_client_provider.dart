// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'dio_provider.dart';

// final connectivityProvider = Provider<Connectivity>((ref) => Connectivity());

// final apiClientProvider = Provider<ApiClient>((ref) {
//   final dio = ref.watch(dioProvider);
//   final connectivity = ref.watch(connectivityProvider);
//   return ApiClient(dio, connectivity); //  updated constructor
// });



// import 'dart:developer';

// import 'package:axis_dashboard/common/utils/app_constants.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';

// import 'api_result.dart';

// class ApiClient {
//   final Dio dio;
//   final Connectivity _connectivity;

//   ApiClient(this.dio, [Connectivity? connectivity])
//     : _connectivity = connectivity ?? Connectivity();

//   Future<ApiResult<T>> get<T>(String path, T Function(dynamic) fromJson) async {
//     if (!await _isConnected()) {
//       return const Failure("No internet connection");
//     }

//     try {
//       final response = await dio.get(path);

//       if (response.statusCode != null &&
//           response.statusCode! >= 200 &&
//           response.statusCode! < 300) {
//         return Success(fromJson(response.data));
//       } else {
//         final message = _extractErrorMessage(response);
//         return Failure(message);
//       }
//     } catch (e) {
//       final message = _handleException(e as Exception);
//       return Failure(message);
//     }
//   }

//   Future<ApiResult<T>> post<T>(
//     String path,
//     dynamic body,
//     T Function(dynamic) fromJson,
//     {bool getDataOnFailure = false}
//   ) async {
//     if (!await _isConnected()) {
//       return const Failure("No internet connection");
//     }

//     try {
//       final response = await dio.post(path, data: body);

//       if (response.statusCode != null &&
//           response.statusCode! >= 200 &&
//           response.statusCode! < 300) {
//         debugPrint(
//           'RESPONSE: ${response.data} TYPE: ${response.data.runtimeType}',
//         );
//         final responseMap = response.data as Map<String, dynamic>?;
//         if (responseMap?['status'] == 'failure') {
//           Map<String, dynamic>? data;
//           if (responseMap?['data'] != null) {
//             data = responseMap?['data'];
//           }
//           if(getDataOnFailure){
//             debugPrint('getDataOnFailure');
//             return FailureWithData(
//                 responseMap?['msg'] as String? ??
//                     responseMap?['message'] as String? ??
//                     data?['msg'] as String? ??
//                     AppConstants.somethingWentWrongPleaseTryAgain,
//                 data: response.data
//             );
//           }
//           return Failure(
//             responseMap?['msg'] as String? ??
//                 responseMap?['message'] as String? ??
//                 data?['msg'] as String? ??
//                 AppConstants.somethingWentWrongPleaseTryAgain,
//           );
//         }
//         return Success(fromJson(response.data));
//       } else {
//         final message = _extractErrorMessage(response);
//         return Failure(message);
//       }
//     } on DioException catch (dioError) {
//       if (dioError.response != null) {
//         debugPrint(
//           "SERVER ERROR [${dioError.response?.statusCode}]: ${dioError.response?.data}",
//         );

//         final responseMap =
//             dioError.response?.data is Map<String, dynamic>
//                 ? dioError.response?.data as Map<String, dynamic>
//                 : null;

//         final message =
//             responseMap?['message']?.toString() ??
//             responseMap?['error'].toString() ??
//             _handleException(dioError);

//         return Failure(message);
//       } else {
//         rethrow;
//       }
//     } catch (e) {
//       debugPrint('API CLIENT EXCEPTION: $e');
//       final message = _handleException(e);
//       return Failure(message);
//     }
//   }

//   Future<bool> _isConnected() async {
//     final result = await _connectivity.checkConnectivity();
//     log('[Connectivity]: $result');
//     return result.first != ConnectivityResult.none ||
//         result.first != ConnectivityResult.other;
//   }

//   String _extractErrorMessage(Response response) {
//     try {
//       if (response.data != null) {
//         if (response.data is Map<String, dynamic>) {
//           return response.data['message'] ??
//               'Server Error: ${response.statusCode}';
//         } else if (response.data is String) {
//           return response.data;
//         }
//       }
//     } catch (_) {}
//     return 'Server Error: ${response.statusCode}';
//   }

//   String _handleException(Object e) {
//     if (e is DioException) {
//       switch (e.type) {
//         case DioExceptionType.connectionTimeout:
//           return AppConstants.connectionTimeout;
//         case DioExceptionType.sendTimeout:
//           return AppConstants.sendTimeout;
//         case DioExceptionType.receiveTimeout:
//           return AppConstants.receiveTimeout;
//         case DioExceptionType.badCertificate:
//           return AppConstants.badCertificate;
//         case DioExceptionType.badResponse:
//           return AppConstants.badResponse;
//         case DioExceptionType.cancel:
//           return AppConstants.requestCancelled;
//         case DioExceptionType.connectionError:
//           return AppConstants.connectionError;
//         case DioExceptionType.unknown:
//           return AppConstants.unknownError;
//       }
//     }
//     return AppConstants.unknownError;
//   }
// }
