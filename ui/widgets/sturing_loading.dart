import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:student_monitoring/ui/values.dart';

class Loading {
  Widget loading() {
    return Center(
      child: SpinKitWave(
        color: CustomColor.primary100(1),
        size: 50.0,
      ),
    );
  }
}
