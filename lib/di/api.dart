import 'package:abersoft/di/di.dart';
import 'package:abersoft/utils/dio_interceptor.dart';
import 'package:dio/dio.dart';

class API {
  static const BASE_URL = "https://reqres.in";

  Dio getDio({String token}) {
    return Dio(BaseOptions(
        baseUrl: BASE_URL,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        receiveTimeout: 60000,
        connectTimeout: 60000,
        validateStatus: (int status) {
          return status > 0;
        }))
      ..interceptors.add(DioInterceptor());
  }
}
