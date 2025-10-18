
// import 'package:dio/dio.dart';

// class AppInterceptor extends Interceptor {
//   // String? _cachedToken;
//   String? _cachedAppId;
//   String? _cachedCmsToken;

//   Future<String?> _getCmsToken() async {
//     if (_cachedCmsToken != null) return _cachedCmsToken;
//     _cachedCmsToken = await SecureStore.getCmsToken();
//     return _cachedCmsToken;
//   }

//   @override
//   void onRequest(
//     RequestOptions options,
//     RequestInterceptorHandler handler,
//   ) async {
//     // Skip headers for init API
//     if (options.path.contains(ApiServices.initService)) {
//       return handler.next(options);
//     } else if (options.path.contains("/cms")) {
//       final cmsToken = await _getCmsToken();

//       options.headers.addAll({
//         'Authorization': cmsToken ?? '',
//         'Content-Type': 'application/json',
//         'X-Encryption-Enabled': 'N',
//         'deviceType': DeviceHelper.deviceType,
//       });
//       return handler.next(options);
//     }
//     final cachedToken = await TokenManager.getJwtToken();
//     final authToken = await TokenManager.getPostLoginJwtToken();
//     // _cachedToken ??= await SecureStore.getJwtToken();
//     _cachedAppId ??= await SecureStore().getAppId();
//     final cmsToken = await _getCmsToken();
//     print("CMS Token: $cmsToken");

//     // print("Auth token"+authToken.toString());
//     options.headers.addAll({
//       'Content-Type': 'application/json',
//       'X-Encryption-Enabled': AppConfig.config.isEncryptionEnabled ? 'Y' : 'N',
//       if (cachedToken != null) 'X-Jwt-Token': cachedToken,
//       if (_cachedAppId != null) 'X-App-Id': _cachedAppId!,
//       'Authorization': cmsToken ?? '',
//       'deviceType': DeviceHelper.deviceType,
//     });

//     if (AppConfig.config.isEncryptionEnabled) {
//       final originalPayload = options.data;
//       debugPrint('[OriginalPayload]: $originalPayload');
//       try {
//         final encryptedPayload = await AESHelper.encrypt(
//           jsonEncode(originalPayload),
//         );
//         log('[EncryptedPayload]: $encryptedPayload');
//         log('[Added Encrypted Payload to request]');
//         options.data = {"encryptedData": encryptedPayload};
//         return handler.next(options);
//       } catch (e) {
//         log('❌[Encryption Failed]: $e');
//         return handler.reject(
//           DioException(
//             requestOptions: options,
//             type: DioExceptionType.unknown,
//             error: 'Failed to encrypt request payload. Please try again.',
//           ),
//           true,
//         );
//       }
//     }

//     return handler.next(options);
//   }

//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) async {
//     if (response.requestOptions.path.contains(ApiServices.initService)) {
//       return handler.next(response);
//     }

//     final resData = response.data;

//     if (resData is Map<String, dynamic> &&
//         resData.containsKey('encryptedData')) {
//       try {
//         final decrypted = await AESHelper.decrypt(resData['encryptedData']);
//         response.data = jsonDecode(decrypted);

//         return handler.next(response);
//       } catch (e) {
//         log('❌[Decryption Failed]: $e');

//         return handler.reject(
//           DioException(
//             requestOptions: response.requestOptions,
//             response: response,
//             type: DioExceptionType.badResponse,
//             error: 'Failed to decrypt response.',
//           ),
//           true,
//         );
//       }
//     }

//     return handler.next(response);
//   }
// }
