import 'package:dio/dio.dart';

abstract class RestAPI {
  Future<Response> register({Map<String, String> params});

  Future<Response> login({Map<String, String> params});
}
