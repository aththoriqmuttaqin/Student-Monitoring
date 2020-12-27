import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:student_monitoring/ui/widgets/sturing_button.dart';

import '../../values.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

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
              SturingButton().sturingButton(
                context: context,
                text: model.joinRoomText,
                function: model.joinRoom,
              ),
              SturingButton().sturingButton(
                context: context,
                text: model.createRoomText,
                function: model.createRoom,
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
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
