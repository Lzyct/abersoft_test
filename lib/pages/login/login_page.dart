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
class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: context.appBarNoTitle(),
      isScroll: false,
      isPadding: false,
      avoidBottomInset: true,
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
              titleCard: Strings.login,
              titleButton: Strings.login,
              buttonPressed: () {
                //validate form first
                if (_formKey.currentState.validate()) {
                  context.goToClearStack(HomePage());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
