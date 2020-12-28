import 'package:flutter/material.dart';

import '../../services/input_formatters.dart';
import '../values.dart';
import 'sturing_box.dart';

class SturingTextfield extends SturingBox {
  Widget sturingTextField({
    BuildContext context,
    String hintText: '',
    bool passwordInput: false,
    bool uppercase: false,
    TextEditingController controller,
  }) {
    return super.sturingBox(
      context: context,
      color: CustomColor.accent100(),
      child: TextFormField(
        controller: controller,
        obscureText: passwordInput,
        style: TextStyle(
          fontSize: 16,
          color: CustomColor.primary300(),
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 16,
            color: CustomColor.primary300(),
          ),
        ),
        inputFormatters: [
          uppercase ? UpperCaseTextFormatter() : DefaultTextFormatter(),
        ],
      ),
    );
  }
}
