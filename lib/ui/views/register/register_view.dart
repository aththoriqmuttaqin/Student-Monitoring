import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../values.dart';
import '../../widgets/sturing_button.dart';
import '../../widgets/sturing_textfield.dart';
import 'register_viewmodel.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key key}) : super(key: key);

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
                  text: model.registerText,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 20,
                ),
                SturingTextfield().sturingTextField(
                  context: context,
<<<<<<< HEAD
                  controller: model.inputNameController,
                  hintText: model.nameText,
                ),
                SturingTextfield().sturingTextField(
                  context: context,
=======
>>>>>>> master
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
                  text: model.signUpText,
                  function: model.register,
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => RegisterViewModel(),
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
