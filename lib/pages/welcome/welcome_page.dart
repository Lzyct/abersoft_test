import 'package:abersoft/blocs/blocs.dart';
import 'package:abersoft/pages/pages.dart';
import 'package:abersoft/resources/resources.dart';
import 'package:abersoft/utils/utils.dart';
import 'package:abersoft/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///*********************************************
/// Created by ukietux on 12/31/20 with ♥
/// (>’_’)> email : ukie.tux@gmail.com
/// github : https://www.github.com/ukieTux <(’_’<)
///*********************************************
/// © 2020 | All Right Reserved
class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: context.noAppBarDark(),
      isScroll: false,
      child: Stack(
        children: [
          Positioned(
              left: context.widthInPercent(10),
              right: context.widthInPercent(10),
              bottom: context.heightInPercent(23),
              child: Button(
                title: Strings.registerAccount,
                color: Colors.white,
                titleColor: Colors.black,
                onPressed: () {
                  context.goTo(BlocProvider(
                    create: (_) => RegisterBloc(),
                    child: RegisterPage(),
                  ));
                },
              )),
          Positioned(
            left: context.widthInPercent(10),
            right: context.widthInPercent(10),
            bottom: context.heightInPercent(13),
            child: Button(
              title: Strings.login,
              color: Colors.white,
              titleColor: Colors.black,
              onPressed: () {
                context.goTo(BlocProvider(
                  create: (_) => LoginBloc(),
                  child: LoginPage(),
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}
