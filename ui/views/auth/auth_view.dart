import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import '../../values.dart';
import '../../widgets/sturing_button.dart';
import '../../widgets/sturing_textfield.dart';
import 'auth_viewmodel.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: CustomColor.primary200(),
        body: Container(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                sturingText(
                  text: model.welcomeText,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                sturingText(
                  text: model.sturingText,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: SvgPicture.asset(model.standingAssetsDir),
                ),
                SturingTextfield().sturingTextField(
                  context: context,
                  controller: model.inputEmailController,
                  hintText: model.emailText,
                ),
                SturingTextfield().sturingTextField(
                  context: context,
                  controller: model.inputPasswordController,
                  hintText: model.passwordText,
                  passwordInput: true,
                ),
                SturingButton().sturingButton(
                  context: context,
                  text: model.loginText,
                  function: model.login,
                ),
                InkWell(
                  onTap: model.navigateToForgot,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: sturingText(
                      text: model.forgotText,
                      fontSize: 14,
                      underlined: true,
                    ),
                  ),
                ),
                InkWell(
                  onTap: model.navigateToRegister,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: sturingText(
                      text: model.registerText,
                      fontSize: 14,
                      underlined: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => AuthViewModel(),
    );
  }

  PreferredSizeWidget sturingAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: Container(
        color: CustomColor.primary200(),
      ),
    );
  }

  Text sturingText({
    String text,
    double fontSize,
    FontWeight fontWeight: FontWeight.normal,
    bool underlined: false,
  }) {
    return Text(
      text,
      style: TextStyle(
        decoration: underlined ? TextDecoration.underline : TextDecoration.none,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: CustomColor.primary100(1),
      ),
    );
  }
}
