import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/locator.dart';
import '../../../app/router.gr.dart';

class ForgotViewModel extends BaseViewModel {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();
  final inputEmailController = TextEditingController();

  String _forgotText = 'Forgot Password';
  String _enterEmailText = 'Enter your Email';
  String _emailText = 'Email';
  String _sendText = 'Send Verification';

  String get forgotText => _forgotText;
  String get enterEmailText => _enterEmailText;
  String get sendText => _sendText;
  String get emailText => _emailText;

  Future<void> forgot() async {
    bool success = true;
    try {
      await _auth.sendPasswordResetEmail(
          email: inputEmailController.text.trim());
    } catch (e) {
      print(e.code);
      success = false;
    }
    showSncakbar(
      isSuccess: success,
      email: inputEmailController.text.trim(),
    );
    await Future.delayed(Duration(seconds: 3));
    await _navigationService.clearStackAndShow(Routes.authView);
  }

  showSncakbar({
    bool isSuccess,
    String email,
  }) {
    String title = isSuccess ? 'Email sent' : 'Email not sent';
    String message =
        isSuccess ? 'The verification has sent to $email' : 'User not found';
    _snackbarService.showSnackbar(
      title: title,
      message: message,
      duration: Duration(seconds: 2),
    );
  }
}
