import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class JoinRoomViewModel extends BaseViewModel {
  final inputRoomController = TextEditingController();

  String _studentText = 'Student';
  String _monitoringText = 'Monitoring';
  String _optionText = 'Enter Code :';
  String _codeText = 'Code';
  String _enterRoomText = 'Join Room';

  String get studentText => _studentText;
  String get monitoringText => _monitoringText;
  String get optionText => _optionText;
  String get codeText => _codeText;
  String get enterRoomText => _enterRoomText;

  void enterRoom() {}
}
