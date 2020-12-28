import 'dart:math';

import 'package:battery/battery.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RoomService {
  String generateRoomId() {
    Random random = new Random();
    const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    String roomId;

    String randomString = String.fromCharCodes(
      Iterable.generate(
        4,
        (_) => _chars.codeUnitAt(
          random.nextInt(_chars.length),
        ),
      ),
    );
    int randomNumber = random.nextInt(900) + 100;

    roomId = '$randomString$randomNumber'.toUpperCase();

    return roomId;
  }

  Future<int> getBatteryLevel() async {
    var _battery = Battery();
    return await _battery.batteryLevel;
  }
}
