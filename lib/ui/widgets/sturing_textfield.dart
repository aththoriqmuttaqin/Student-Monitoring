import 'package:flutter/material.dart';
import 'sturing_box.dart';

import '../values.dart';

class SturingTextfield extends SturingBox {
  Widget sturingTextField({
    BuildContext context,
    String hintText: '',
    bool passwordInput: false,
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
      ),
    );
  }
}
