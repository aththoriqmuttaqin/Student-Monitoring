import 'package:stacked/stacked.dart';
import 'package:student_monitoring/app/locator.dart';
import 'package:student_monitoring/datamodels/user.dart';
import 'package:student_monitoring/services/room_service.dart';

class HomeViewModel extends BaseViewModel {
  final RoomService _roomService = locator<RoomService>();

  String _studentText = 'Student';
  String _monitoringText = 'Monitoring';
  String _optionText = 'Select :';
  String _joinRoomText = 'Join Room';
  String _createRoomText = 'Create Room';
  User _user;

  String get studentText => _studentText;
  String get monitoringText => _monitoringText;
  String get optionText => _optionText;
  String get joinRoomText => _joinRoomText;
  String get createRoomText => _createRoomText;

  void init(User user) async {
    _user = user;
  }

  void joinRoom() {}

  void createRoom() {
    print(_roomService.generateRoomId());
  }
}
