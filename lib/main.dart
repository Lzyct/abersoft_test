import 'dart:async';

import 'package:abersoft/di/di.dart';
import 'package:abersoft/pages/welcome/welcome_page.dart';
import 'package:abersoft/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:oktoast/oktoast.dart';

void main() async {
  serviceLocator();

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light));

  runZonedGuarded(
    () => SystemChrome.setPreferredOrientations(
            [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
        .then((_) async {
      runApp(new MyApp());
    }),
    (error, stackTrace) async {
      // FirebaseCrashlytics.instance.recordError(error, stackTrace);
      // await sentry.captureException(
      //   exception: error,
      //   stackTrace: stackTrace,
      // );
    },
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: ScreenUtilInit(
        designSize: Size(375, 812),
        allowFontScaling: false,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          builder: (BuildContext context, Widget child) {
            final MediaQueryData data = MediaQuery.of(context);
            return MediaQuery(
              data: data.copyWith(
                  textScaleFactor: 1, alwaysUse24HourFormat: true),
              child: child,
            );
          },
          title: Strings.appName,
          theme: themeDefault,
          home: WelcomePage(),
        ),
      ),
    );
  }
}
