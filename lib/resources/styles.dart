import 'package:abersoft/resources/resources.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class TextStyles {
  static TextStyle text = TextStyle(
    fontSize: Dimens.fontNormal,
    color: Palette.colorText,
  );

  static TextStyle textBold = TextStyle(
    color: Palette.colorText,
    fontSize: Dimens.fontNormal,
    fontWeight: FontWeight.bold,
  );
}

class BoxDecorations {
  static BoxDecoration button = BoxDecoration(
    color: Palette.colorPrimary,
    borderRadius: BorderRadius.all(Radius.circular(Dimens.radiusButton)),
  );
  static BoxDecoration backgroundDecoration = BoxDecoration(
    gradient: Gradients.backgroundGradient,
  );
}

class Gradients {
  static LinearGradient backgroundGradient = LinearGradient(
    // Where the linear gradient begins and ends
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Palette.colorPrimary,
      Palette.colorAccent,
    ],
  );
}
