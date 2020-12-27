import 'dart:async';
import 'dart:math';

import 'package:stacked/stacked.dart';
import 'package:student_monitoring/app/locator.dart';
import 'package:student_monitoring/datamodels/user.dart';
import 'package:student_monitoring/services/firestore_service.dart';
import 'package:student_monitoring/services/room_service.dart';

class RoomViewModel extends BaseViewModel {
  final RoomService _roomService = locator<RoomService>();
  final FirestoreService _firestoreService = locator<FirestoreService>();

  User _user = new User(
    name: 'Erald',
    userId: 'w4TI1o7BBrMQoPbY7bJ6RHm4IKi2',
    signalStrength: 0,
    batteryLevel: 0,
    roomId: 'ABCD123',
  );

  String _studentText = 'Student';
  String _monitoringText = 'Monitoring';
  List<User> _data;

  String get studentText => _studentText;
  String get monitoringText => _monitoringText;
  User get user => _user;
  List<User> get data => _data;

  void init() async {
    const oneSec = const Duration(
      seconds: 5,
    );
    Random random = new Random();
    new Timer.periodic(oneSec, (Timer t) async {
      _user.setBatteryLevel = await _roomService.getBatteryLevel();
      _user.setSignalStrength = random.nextInt(900) + 100;
      await _firestoreService.updateUser(_user);
      await getRoomParticipant();
      notifyListeners();
    });
  }

  Future getRoomParticipant() async {
    _data = await _firestoreService.getRoomParticipant(_user.getRoomId);
  }
}
