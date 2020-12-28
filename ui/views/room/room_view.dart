import 'package:battery_indicator/battery_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signal_strength_indicator/signal_strength_indicator.dart';
import 'package:stacked/stacked.dart';
import 'package:student_monitoring/datamodels/user.dart';
import 'package:student_monitoring/ui/widgets/sturing_loading.dart';

import '../../values.dart';
import 'room_viewmodel.dart';

class RoomView extends StatelessWidget {
  const RoomView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      onModelReady: (model) => model.init(),
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
              sturingText(
                text: 'Room ID : ' + model.user.getRoomId,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              detailsContainer(model.user, context),
              SingleChildScrollView(
                child: Container(
                  child: model.data == null
                      ? Loading().loading()
                      : Column(
                          children: <Widget>[
                            for (var i in model.data)
                              i.getUserId == model.user.getUserId
                                  ? Container()
                                  : detailsContainer(i, context),
                          ],
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => RoomViewModel(),
    );
  }

  Container detailsContainer(User user, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 5.0,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      width: getScreenWidth(context),
      height: getScreenHeight(context) * 0.1,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: SvgPicture.asset('lib/assets/image/user.svg'),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: sturingText(
                text: user.getname,
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: BatteryIndicator(
              style: BatteryIndicatorStyle.values[1],
              colorful: true,
              showPercentNum: false,
              mainColor: Colors.green,
              size: 20,
              showPercentSlide: true,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: sturingText(
                text: user.getBatteryLevel.toString(),
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: SignalStrengthIndicator.bars(
                value: user.getSignalStrength / 1000,
                size: 20,
                barCount: 3,
                bevelled: true,
                spacing: -0.01,
              )),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: sturingText(
                text: user.getSignalStrength.toString(),
                fontSize: 18,
              ),
            ),
          ),
        ],
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
