import 'dart:developer';

import 'package:dio/dio.dart';

import '../../api/dio.dart';
import '../model/user.dart';

class UserApi {
  // Future<Response>
  // static Future<List<User>> loadUsers() async {
  //   final res = await CallApi.dio.get(
  //     '/api/users',
  //     queryParameters: {
  //       'page': 2,
  //     },
  //   );

  //   final List<User> allModels = User.fromJsonList(res.data['data']);
  //   return allModels;
  // }

  static Future<List<User>> loadUsers() async {
    final res = await CallApi.dio.get('/api/users');

    return User.fromJsonList(res.data['data']);
  }
}
