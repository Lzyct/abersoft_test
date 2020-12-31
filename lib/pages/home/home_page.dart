import 'package:abersoft/resources/resources.dart';
import 'package:abersoft/utils/utils.dart';
import 'package:abersoft/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///*********************************************
/// Created by ukietux on 12/31/20 with ♥
/// (>’_’)> email : ukie.tux@gmail.com
/// github : https://www.github.com/ukieTux <(’_’<)
///*********************************************
/// © 2020 | All Right Reserved
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Parent(
        appBar: context.noAppBarLight(),
        isScroll: false,
        isGradient: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(
                  Images.icImac,
                  width: context.widthInPercent(75),
                )),
            SizedBox(height: context.dp30()),
            Text(
              Strings.welcomeToApp,
              style: TextStyles.textBold.copyWith(fontSize: Dimens.fontLarge4),
            ),
            SizedBox(height: context.dp24()),
            Text(
              Strings.loremIpsum,
              textAlign: TextAlign.center,
              style: TextStyles.text.copyWith(fontSize: Dimens.fontSmall),
            ).padding(
                edgeInsets: EdgeInsets.symmetric(horizontal: context.dp16()))
          ],
        ));
  }
}
