import 'package:abersoft/pages/pages.dart';
import 'package:abersoft/resources/resources.dart';
import 'package:abersoft/utils/utils.dart';
import 'package:abersoft/widgets/widgets.dart';
import 'package:flutter/material.dart';

///*********************************************
/// Created by ukietux on 12/31/20 with ♥
/// (>’_’)> email : ukie.tux@gmail.com
/// github : https://www.github.com/ukieTux <(’_’<)
///*********************************************
/// © 2020 | All Right Reserved
class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: context.appBarNoTitle(),
      avoidBottomInset: true,
      isScroll: false,
      isPadding: false,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BottomCard(
              formKey: _formKey,
              emailController: _emailController,
              passwordController: _passwordController,
              titleCard: Strings.registerNewAccount,
              titleButton: Strings.createAccount,
              buttonPressed: () {
                //validate form first
                if (_formKey.currentState.validate()) {
                  context.goToReplace(LoginPage());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
