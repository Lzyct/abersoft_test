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
class BottomCard extends StatefulWidget {
  BottomCard(
      {Key key,
      this.titleCard,
      this.titleButton,
      this.buttonPressed,
      this.emailController,
      this.passwordController,
      this.formKey})
      : super(key: key);
  final String titleCard;
  final String titleButton;
  final Function() buttonPressed;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  @override
  _BottomCardState createState() => _BottomCardState();
}

class _BottomCardState extends State<BottomCard> {
  var _isPasswordVisible = false;
  var _fnEmail = FocusNode();
  var _fnPassword = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.widthInPercent(100),
      height: context.heightInPercent(45),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimens.radiusBottomCard),
            topRight: Radius.circular(Dimens.radiusBottomCard),
          )),
      child: SingleChildScrollView(
        child: Form(
          key: widget.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.titleCard ?? "",
                style:
                    TextStyles.textBold.copyWith(fontSize: Dimens.fontLarge3),
              ),
              TextF(
                curFocusNode: _fnEmail,
                nextFocusNode: _fnPassword,
                hint: Strings.email,
                keyboardType: TextInputType.emailAddress,
                controller: widget.emailController,
                textInputAction: TextInputAction.next,
                validator: (value) => value.isEmpty
                    ? Strings.errorEmpty
                    : value.isValidEmail()
                        ? null
                        : Strings.invalidEmail,
              ),
              TextF(
                curFocusNode: _fnPassword,
                hint: Strings.password,
                obscureText: !_isPasswordVisible,
                maxLine: 1,
                keyboardType: TextInputType.visiblePassword,
                controller: widget.passwordController,
                textInputAction: TextInputAction.done,
                suffixIcon: IconButton(
                  icon: Icon(_isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
                validator: (value) => value.isEmpty ? Strings.errorEmpty : null,
              ),
              SizedBox(height: context.dp28()),
              Button(
                  title: widget.titleButton ?? "",
                  color: Palette.colorPrimary,
                  fontSize: Dimens.fontLarge,
                  onPressed: widget.buttonPressed)
            ],
          ).padding(edgeInsets: EdgeInsets.all(context.dp28())),
        ),
      ),
    );
  }
}
