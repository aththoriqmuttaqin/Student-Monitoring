import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
<<<<<<< HEAD
import 'package:student_monitoring/datamodels/user.dart';
import 'package:student_monitoring/ui/widgets/sturing_button.dart';

import '../../values.dart';
=======
<<<<<<< HEAD
<<<<<<< HEAD
import 'package:student_monitoring/ui/widgets/sturing_button.dart';

import '../../values.dart';
=======

>>>>>>> master
=======

>>>>>>> master
>>>>>>> master
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key, this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      onModelReady: (model) => model.init(user),
      builder: (context, model, child) => Scaffold(
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> master
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
<<<<<<< HEAD
=======
=======
        body: Center(
          child: Text('HomeView'),
>>>>>>> master
=======
        body: Center(
          child: Text('HomeView'),
>>>>>>> master
>>>>>>> master
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> master

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
<<<<<<< HEAD
=======
=======
>>>>>>> master
=======
>>>>>>> master
>>>>>>> master
}
