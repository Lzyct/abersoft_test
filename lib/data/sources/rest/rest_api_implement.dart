import 'package:abersoft/di/di.dart';
import 'package:dio/dio.dart';

import '../sources.dart';

class RestApiImpl with RestAPI {
  var _dio = sl<API>().getDio();

  @override
  Future<Response> login({Map<String, String> params}) async =>
      await _dio.post("/api/login", data: params);

  @override
  Future<Response> register({Map<String, String> params}) async =>
      await _dio.post("/api/register", data: params);
}
