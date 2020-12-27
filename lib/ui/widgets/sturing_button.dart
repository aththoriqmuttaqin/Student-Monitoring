import 'package:flutter/material.dart';
import 'sturing_box.dart';

import '../values.dart';

class SturingButton extends SturingBox {
  Widget sturingButton({BuildContext context, String text, dynamic function}) {
    return InkWell(
      onTap: function,
      child: super.sturingBox(
        context: context,
        color: CustomColor.accent200(),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: CustomColor.primary300(),
<<<<<<< HEAD
              fontSize: 18,
=======
              fontSize: 16,
>>>>>>> master
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
