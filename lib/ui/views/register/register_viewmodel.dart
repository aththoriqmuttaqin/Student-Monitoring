import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/locator.dart';
import '../../../app/router.gr.dart';

class RegisterViewModel extends BaseViewModel {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();
  final inputEmailController = TextEditingController();
  final inputPasswordController = TextEditingController();

  String _registerText = 'Register Account';
  String _emailText = 'Email';
  String _passwordText = 'Password';
  String _signUpText = 'Sign Up';

  String get registerText => _registerText;
  String get signUpText => _signUpText;
  String get emailText => _emailText;
  String get passwordText => _passwordText;

  void register() async {
    final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
      email: inputEmailController.text.trim(),
      password: inputPasswordController.text,
    ))
        .user;
    showSncakbar(
      isSuccess: user != null ? true : false,
      email: user.email,
    );
    await Future.delayed(Duration(seconds: 3));
    await _navigationService.clearStackAndShow(Routes.authView);
  }

  showSncakbar({
    bool isSuccess,
    String email,
  }) {
    String title = isSuccess ? 'Registration Success' : 'Registration Failed';
    String message = isSuccess
        ? 'The email $email successfully registered'
        : 'The email $email not registered';
    _snackbarService.showSnackbar(
      title: title,
      message: message,
      duration: Duration(seconds: 2),
    );
  }
}
