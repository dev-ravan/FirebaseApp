import 'package:firebase_app/Utils/exports.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthFireServices {
  final firebaseAuth = FirebaseAuth.instance;

  // Sign in method
  logIn({required String email, required String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      myWidgets.toastMsg(msg: e.code);
    }
  }

  // logout method
  logOut() {
    try {
      firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      myWidgets.toastMsg(msg: e.code);
    }
  }

  // Sign up method
  signUp({required String email, required String password}) {
    try {
      firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      myWidgets.toastMsg(msg: e.code);
    }
  }
}
