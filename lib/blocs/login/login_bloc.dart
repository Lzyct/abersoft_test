import 'package:abersoft/blocs/blocs.dart';
import 'package:abersoft/data/models/responses/login_register_response.dart';
import 'package:abersoft/data/repositories/repositories.dart';
import 'package:abersoft/di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Cubit<Resources<LoginRegisterResponse>> {
  LoginBloc() : super(Resources.loading());
  var _loginRegisterRepo = sl<LoginRegisterRepository>();

  postLogin(Map<String, String> _params) async {
    emit(Resources.loading());
    emit(await _loginRegisterRepo.login(_params));
  }
}
