import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:student_monitoring/ui/widgets/sturing_button.dart';
import 'package:student_monitoring/ui/widgets/sturing_textfield.dart';

import '../../values.dart';
import 'join_room_viewmodel.dart';

class JoinRoomView extends StatelessWidget {
  const JoinRoomView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, model, child) => Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 30),
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              sturingText(
                text: model.studentText,
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
              sturingText(
                text: model.monitoringText,
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  left: 50.0,
                ),
                margin: EdgeInsets.only(
                  top: 40.0,
                ),
                child: sturingText(
                  text: model.optionText,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SturingTextfield().sturingTextField(
                context: context,
                controller: model.inputRoomController,
                hintText: model.codeText,
                uppercase: true,
              ),
              SturingButton().sturingButton(
                context: context,
                text: model.enterRoomText,
                function: model.enterRoom,
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => JoinRoomViewModel(),
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
