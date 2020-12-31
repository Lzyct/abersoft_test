import 'dart:developer';

import 'package:abersoft/di/di.dart';
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  bool isMobile() {
    var shortestSide = MediaQuery.of(this).size.shortestSide;
    return shortestSide < 600;
  }

  logs(dynamic message) {
    log("========================================================================================");
    log("| Message Log : $message");
    log("| Widget Name : ${this.widget}");
    log("========================================================================================");
  }

  // Navigator Push
  goTo(Widget widget) {
    Navigator.push(
        this,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }

  // Navigator Push Replacement with PageRouterBuilder
  goToReplacePageRoute(Widget widget) {
    Navigator.pushReplacement(
        this,
        PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 1000),
            pageBuilder: (_, __, ___) => widget));
  }

  // Navigator Push Replacement
  goToReplace(Widget widget) {
    Navigator.pushReplacement(
        this,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }

  // Navigator push and clear
  goToClearStack(Widget widget) {
    Navigator.pushAndRemoveUntil(this,
        MaterialPageRoute(builder: (context) => widget), (route) => false);
  }

  // AppBar with no Title
  appBarNoTitle() {
    return AppBar(
      brightness: Brightness.dark,
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(this);
        },
      ),
      automaticallyImplyLeading: true,
    );
  }

  // No AppBar Light
  noAppBarLight() => PreferredSize(
      child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          brightness: Brightness.light),
      preferredSize: Size.fromHeight(0.0));

  // No AppBar Dark
  noAppBarDark() => PreferredSize(
      child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          brightness: Brightness.dark),
      preferredSize: Size.fromHeight(0.0));

  /// Dimens should define in context extensions

  widthInPercent(double percent) {
    var toDouble = percent / 100;
    return MediaQuery.of(this).size.width * toDouble;
  }

  heightInPercent(double percent) {
    var toDouble = percent / 100;
    return MediaQuery.of(this).size.height * toDouble;
  }

  dp2() {
    return MediaQuery.of(this).size.width / 120;
  }

  dp4() {
    return MediaQuery.of(this).size.width / 100;
  }

  dp6() {
    return MediaQuery.of(this).size.width / 70;
  }

  dp8() {
    return MediaQuery.of(this).size.width / 54;
  }

  dp10() {
    return MediaQuery.of(this).size.width / 41;
  }

  dp12() {
    return MediaQuery.of(this).size.width / 34;
  }

  dp14() {
    return MediaQuery.of(this).size.width / 29;
  }

  dp16() {
    return MediaQuery.of(this).size.width / 26;
  }

  dp18() {
    return MediaQuery.of(this).size.width / 23;
  }

  dp20() {
    return MediaQuery.of(this).size.width / 20;
  }

  dp22() {
    return MediaQuery.of(this).size.width / 17;
  }

  dp24() {
    return MediaQuery.of(this).size.width / 16;
  }

  dp25() {
    return MediaQuery.of(this).size.width / 15;
  }

  dp28() {
    return MediaQuery.of(this).size.width / 12;
  }

  dp30() {
    return MediaQuery.of(this).size.width / 10;
  }

  dp32() {
    return MediaQuery.of(this).size.width / 8;
  }

  dp36() {
    return MediaQuery.of(this).size.width / 6;
  }

}
