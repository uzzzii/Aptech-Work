import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  //instant of authentication
  final FirebaseAuth auth = FirebaseAuth.instance;
  //sign in
  Future<UserCredential> signInWithEmailAndPassword(
      String email, password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }
  //sign out

  //logout

  //errors
}
