import 'dart:convert';

class User {
  String userId;
  String name;
  int batteryLevel;
  int signalStrength;
  String roomId;

  String get getUserId => userId;
  set setUserId(String userId) => this.userId = userId;

  String get getname => name;
  set setname(String name) => this.name = name;

  int get getBatteryLevel => batteryLevel;
  set setBatteryLevel(int batteryLevel) => this.batteryLevel = batteryLevel;

  int get getSignalStrength => signalStrength;
  set setSignalStrength(int signalStrength) =>
      this.signalStrength = signalStrength;

  String get getRoomId => roomId;
  set setRoomId(String roomId) => this.roomId = roomId;

  User({
    this.userId,
    this.name,
    this.batteryLevel,
    this.signalStrength,
    this.roomId,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'name': name,
      'batteryLevel': batteryLevel,
      'signalStrength': signalStrength,
      'roomId': roomId,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return User(
      userId: map['userId'],
      name: map['name'],
      batteryLevel: map['batteryLevel'],
      signalStrength: map['signalStrength'],
      roomId: map['roomId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
