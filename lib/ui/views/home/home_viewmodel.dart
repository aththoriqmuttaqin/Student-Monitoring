<<<<<<< HEAD
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String _studentText = 'Student';
  String _monitoringText = 'Monitoring';
  String _optionText = 'Select :';
  String _joinRoomText = 'Join Room';
  String _createRoomText = 'Create Room';

  String get studentText => _studentText;
  String get monitoringText => _monitoringText;
  String get optionText => _optionText;
  String get joinRoomText => _joinRoomText;
  String get createRoomText => _createRoomText;

  void joinRoom() {}

  void createRoom() {}
=======
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:student_monitoring/ui/views/forgot/forgot_view.dart';
import 'package:student_monitoring/ui/views/home/home_view.dart';
import 'package:student_monitoring/ui/views/register/register_view.dart';

import '../../../app/locator.dart';

class AuthViewModel extends BaseViewModel {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();
  final inputEmailController = TextEditingController();
  final inputPasswordController = TextEditingController();

  String _welcomeText = 'Welcome To';
  String _sturingText = 'Student Monitoring';
  String _standingAssetsDir = 'lib/assets/image/standing.svg';
  String _emailText = 'Email';
  String _passwordText = 'Password';
  String _loginText = 'Login';
  String _forgotText = 'Forgot Password?';
  String _registerText = "Don't have account? Sign Up!";

  String get welcomeText => _welcomeText;
  String get sturingText => _sturingText;
  String get loginText => _loginText;
  String get emailText => _emailText;
  String get passwordText => _passwordText;
  String get standingAssetsDir => _standingAssetsDir;
  String get forgotText => _forgotText;
  String get registerText => _registerText;

  Future navigateToHome() async {
    await _navigationService.replaceWithTransition(
      HomeView(),
      transition: NavigationTransition.RightToLeft,
      duration: Duration(milliseconds: 300),
    );
  }

  Future navigateToRegister() async {
    await _navigationService.navigateWithTransition(
      RegisterView(),
      transition: NavigationTransition.RightToLeft,
      duration: Duration(milliseconds: 300),
    );
  }

  Future navigateToForgot() async {
    await _navigationService.navigateWithTransition(
      ForgotView(),
      transition: NavigationTransition.RightToLeft,
      duration: Duration(milliseconds: 300),
    );
  }

  void login() async {
    final FirebaseUser user = (await _auth.signInWithEmailAndPassword(
            email: inputEmailController.text.trim(),
            password: inputPasswordController.text))
        .user;
    if (user != null) {
      await navigateToHome();
    } else {
      showSncakbar();
    }
  }

  showSncakbar() {
    String title = 'Login failed';
    String message = 'Wrong email/password';
    _snackbarService.showSnackbar(
      title: title,
      message: message,
      duration: Duration(seconds: 2),
    );
  }
>>>>>>> master
}
