import 'package:abersoft/resources/resources.dart';
import 'package:abersoft/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

extension StringExtension on String {
  // Show toast error
  toToastError() {
    try {
      var message = this == null || this.isEmpty ? "error" : this;

      //dismiss before show toast
      dismissAllToast(showAnim: true);

      showToastWidget(
          Toast(
            bgColor: Palette.red,
            icon: Icons.error,
            message: message,
            textColor: Colors.white,
          ),
          dismissOtherToast: true,
          position: ToastPosition.top,
          duration: Duration(seconds: 2));
    } catch (e) {
      print("error $e");
    }
  }

  // Show toast success
  toToastSuccess() {
    try {
      var message = (this == null || this.isEmpty) ? "success" : this;

      //dismiss before show toast
      dismissAllToast(showAnim: true);

      // showToast(msg)
      showToastWidget(
          Toast(
            bgColor: Colors.green,
            icon: Icons.check_circle,
            message: message,
            textColor: Colors.white,
          ),
          dismissOtherToast: true,
          position: ToastPosition.top,
          duration: Duration(seconds: 2));
    } catch (e) {
      print("success $e");
    }
  }

  // Show toast loading
  toToastLoading() {
    try {
      var message = this == null || this.isEmpty ? "loading" : this;
      //dismiss before show toast
      dismissAllToast(showAnim: true);

      showToastWidget(
          Toast(
            bgColor: Colors.black,
            icon: Icons.info,
            message: message,
            textColor: Colors.white,
          ),
          dismissOtherToast: true,
          position: ToastPosition.top,
          duration: Duration(seconds: 3));
    } catch (e) {
      print("loading $e");
    }
  }

  //Function to validate email using regex
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
