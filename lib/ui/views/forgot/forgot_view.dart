import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../values.dart';
import '../../widgets/sturing_button.dart';
import '../../widgets/sturing_textfield.dart';
import 'forgot_viewmodel.dart';

class ForgotView extends StatelessWidget {
  const ForgotView({Key key}) : super(key: key);

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
                  text: model.forgotText,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
                sturingText(
                  text: model.enterEmailText,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 20,
                ),
                SturingTextfield().sturingTextField(
                  context: context,
                  controller: model.inputEmailController,
                  hintText: model.emailText,
                ),
                SturingButton().sturingButton(
                  context: context,
                  text: model.sendText,
                  function: model.forgot,
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ForgotViewModel(),
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
