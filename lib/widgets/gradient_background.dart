import 'package:abersoft/resources/resources.dart';
import 'package:abersoft/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///*********************************************
/// Created by ukieTux on 23/04/2020 with ♥
/// (>’_’)> email : ukie.tux@gmail.com
/// github : https://www.github.com/ukieTux <(’_’<)
///*********************************************
/// © 2020 | All Right Reserved
class GradientBackground extends StatelessWidget {
  const GradientBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.widthInPercent(100),
      height: context.heightInPercent(100),
      decoration: BoxDecorations.backgroundDecoration,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset(
                Images.icGlossyTopLeft,
                width: context.widthInPercent(50),
              )),
          Positioned(
              bottom: context.heightInPercent(10),
              right: 0,
              child: SvgPicture.asset(
                Images.icGlossyBottomRight1,
                width: context.widthInPercent(40),
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: SvgPicture.asset(
                Images.icGlossyBottomRight2,
                width: context.widthInPercent(50),
              )),
        ],
      ),
    );
  }
}
