import 'package:flutter/material.dart';

import '../values.dart';

class SturingBox {
  Widget sturingBox({
    BuildContext context,
    Widget child,
    Color color,
    double width: 0,
  }) {
    return Container(
      width: width == 0 ? getScreenWidth(context) : width,
      height: getScreenHeight(context) / 12.5,
      margin: EdgeInsets.symmetric(
        horizontal: getScreenWidth(context) / 10,
        vertical: getScreenHeight(context) / 90,
      ),
      padding: EdgeInsets.only(
        left: 30.0,
        right: 30.0,
      ),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(17.0),
        ),
      ),
      child: child,
    );
  }
}
