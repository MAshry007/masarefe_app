import 'package:firebase_auth/firebase_auth.dart';

class RegisterUser {
  Future<void> registerUser({
    required String fullName,
    required String email,
    required String password,
  }) async {
    UserCredential userCredential = await FirebaseAuth
        .instance
        .createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

    await userCredential.user!.updateDisplayName(fullName);
  }
}
