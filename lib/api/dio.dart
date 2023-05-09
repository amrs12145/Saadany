import 'package:dio/dio.dart';

class CallApi {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://reqres.in',
      headers: {'accept': 'application/json'},
      // connectTimeout: const Duration(seconds: 5),
      // receiveTimeout: const Duration(seconds: 5),
      // sendTimeout: const Duration(seconds: 5),
    ),
  );

  // static const String _baseUrl = 'https://reqres.in';
  // static const Map<String, dynamic> _headers = {
  //   Headers.acceptHeader: 'application/json',
  //   // Headers.contentTypeHeader: 'application/json; charset=utf-8',
  //   // 'Authorization': 'Bearer', //To be added when logging
  // };

  // static Dio _initialize() {
  //   return Dio(
  //     BaseOptions(
  //       baseUrl: 'https://reqres.in',
  //       headers: {'accept': 'application/json'},
  //       // connectTimeout: const Duration(seconds: 5),
  //       // receiveTimeout: const Duration(seconds: 5),
  //       // sendTimeout: const Duration(seconds: 5),
  //     ),
  //   );
  // }

  // static Future<Response<T>> get<T>(
  //   String path, {
  //   Map<String, dynamic>? queryParameters,
  //   Options? options,
  // }) {
  //   return dio.get(
  //     path,
  //     queryParameters: queryParameters,
  //     options: options,
  //   );
  // }

  // static Future<Response<T>> post<T>(
  //   String path, {
  //   Object? data,
  //   Map<String, dynamic>? queryParameters,
  //   Options? options,
  // }) {
  //   return dio.post(
  //     path,
  //     data: data,
  //     queryParameters: queryParameters,
  //     options: options,
  //   );
  // }
}
