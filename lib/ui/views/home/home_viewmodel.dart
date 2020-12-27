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
}
