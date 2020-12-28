import 'package:flutter/material.dart';

class CustomColor {
  static const Color StatusGreen = Color(0xFF00C7B7);
  static const Color StatusYellow = Color(0xFFF6BC00);
  static const Color StatusRed = Color(0xFFFB6A75);

  static Color primary100(double opacity) {
    return Color.fromRGBO(42, 61, 102, opacity);
  }

  static Color primary200() {
    return const Color(0xFFF4F7FF);
  }

  static Color primary300() {
    return const Color(0xFFFFFFFF);
  }

  static Color accent100() {
    return const Color(0xFFFF4133);
  }

  static Color accent200() {
    return const Color(0xFF69A1AC);
  }

  static Color accent300() {
    return const Color(0xFF89C5CC);
  }
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
