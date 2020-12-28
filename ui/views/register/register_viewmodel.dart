import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:student_monitoring/datamodels/user.dart';
import 'package:student_monitoring/services/authentication_service.dart';
import 'package:student_monitoring/services/firestore_service.dart';

import '../../../app/locator.dart';
import '../../../app/router.gr.dart';

class RegisterViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final FirestoreService _firestoreService = locator<FirestoreService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();

  final inputNameController = TextEditingController();
  final inputEmailController = TextEditingController();
  final inputPasswordController = TextEditingController();

  String _registerText = 'Register Account';
  String _nameText = 'Name';
  String _emailText = 'Email';
  String _passwordText = 'Password';
  String _signUpText = 'Sign Up';

  String get registerText => _registerText;
  String get nameText => _nameText;
  String get signUpText => _signUpText;
  String get emailText => _emailText;
  String get passwordText => _passwordText;

  void register() async {
    String email = inputEmailController.text.trim();
    String password = inputPasswordController.text;

    User registeredUser =
        await _authenticationService.register(email, password);
    bool registered = false;

    if (registeredUser.getUserId != null || registeredUser.getUserId != '') {
      registered = true;
      registeredUser.setname = inputNameController.text;
      registeredUser.setRoomId = '';
      registeredUser.setBatteryLevel = 0;
      registeredUser.setSignalStrength = 0;

      await _firestoreService.addUser(registeredUser);
    }

    showSncakbar(
      isSuccess: registered,
      email: email,
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
