import 'package:firebase_auth/firebase_auth.dart';

class AuthControllar {
  

  Future<String?> loginUser(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    
    return userCredential.user?.uid; // login successful
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      return 'No user found for that email.';
    } else if (e.code == 'wrong-password') {
      return 'Wrong password provided.';
    } else {
      return 'Error: ${e.message}';
    }
  } catch (e) {
    return 'Something went wrong. ${e.toString()}';
  }
}
}
