import 'package:abersoft/blocs/blocs.dart';
import 'package:abersoft/data/models/responses/login_register_response.dart';
import 'package:abersoft/data/sources/sources.dart';
import 'package:abersoft/di/di.dart';

class LoginRegisterRepository {
  Future<Resources<LoginRegisterResponse>> register(
      Map<String, String> _params) async {
    var _restApi = sl<RestApiImpl>();
    try {
      var _response = await _restApi.register(params: _params);
      var _responseRegister = LoginRegisterResponse.fromJson(_response.data);

      if (_response.statusCode == 200) {
        return Resources.success(data: _responseRegister);
      } else {
        return Resources.error(_responseRegister.error);
      }
    } catch (e) {
      return Resources.error(e.toString());
    }
  }

  Future<Resources<LoginRegisterResponse>> login(
      Map<String, String> _params) async {
    var _restApi = sl<RestApiImpl>();
    try {
      var _response = await _restApi.login(params: _params);
      var _responseLogin = LoginRegisterResponse.fromJson(_response.data);

      if (_response.statusCode == 200) {
        return Resources.success(data: _responseLogin);
      } else {
        return Resources.error(_responseLogin.error);
      }
    } catch (e) {
      return Resources.error(e.toString());
    }
  }
}
