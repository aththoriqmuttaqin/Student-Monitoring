import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD

import '../../services/input_formatters.dart';
import '../values.dart';
import 'sturing_box.dart';
=======
import 'sturing_box.dart';

import '../values.dart';
>>>>>>> master
=======
import 'sturing_box.dart';
>>>>>>> master

import '../../services/input_formatters.dart';
import '../values.dart';
<<<<<<< HEAD
import 'sturing_box.dart';
=======
>>>>>>> master
>>>>>>> master

class SturingTextfield extends SturingBox {
  Widget sturingTextField({
    BuildContext context,
    String hintText: '',
    bool passwordInput: false,
<<<<<<< HEAD
    bool uppercase: false,
=======
<<<<<<< HEAD
<<<<<<< HEAD
    bool uppercase: false,
=======
>>>>>>> master
=======
>>>>>>> master
>>>>>>> master
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
<<<<<<< HEAD
        inputFormatters: [
          uppercase ? UpperCaseTextFormatter() : DefaultTextFormatter(),
        ],
=======
<<<<<<< HEAD
<<<<<<< HEAD
        inputFormatters: [
          uppercase ? UpperCaseTextFormatter() : DefaultTextFormatter(),
        ],
=======
>>>>>>> master
=======
>>>>>>> master
>>>>>>> master
      ),
    );
  }
}
