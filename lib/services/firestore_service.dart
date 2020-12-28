import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:student_monitoring/datamodels/user.dart';

@lazySingleton
class FirestoreService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Future addUser(User user) {
    return _db.collection('users').doc(user.userId).set(user.toMap());
  }

  Stream getUser() {
    return _db.collection('users').snapshots().map((snapshot) => snapshot.docs
        .map((document) => User.fromMap(document.data()))
        .toList());
  }

  Future removeUser(String userId) {
    return _db.collection('users').doc(userId).delete();
  }

  Future updateUser(User user) {
    return _db.collection('users').doc(user.getUserId).update({
      "batteryLevel": user.getBatteryLevel,
      "signalStrength": user.getSignalStrength,
      "roomId": user.roomId,
    });
  }

  Future<List<User>> getRoomParticipant(String roomId) async {
    QuerySnapshot qShot =
        await _db.collection('users').where('roomId', isEqualTo: roomId).get();
    return qShot.docs.map((doc) => User.fromMap(doc.data())).toList();
  }

  Future<User> getUserDetails(String uid) async {
    DocumentSnapshot dShot = await _db.collection('users').doc(uid).get();
    return User.fromMap(dShot.data());
  }
}
