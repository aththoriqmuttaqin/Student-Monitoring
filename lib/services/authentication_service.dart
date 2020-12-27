import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:student_monitoring/datamodels/user.dart';

@lazySingleton
class AuthenticationService {
  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;

  Future<User> register(String email, String password) async {
    final auth.User user = (await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    ))
        .user;

    User registeredUser = new User();
    if (user != null) {
      registeredUser.setUserId = user.uid;
    }
    return registeredUser;
  }

  Future<User> login(String email, String password) async {
    final auth.User user = (await _auth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;

    User loggedInuser = new User();
    if (user != null) {
      loggedInuser.setUserId = user.uid;
    }
    return loggedInuser;
  }
}
