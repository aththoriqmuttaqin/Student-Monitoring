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
}
