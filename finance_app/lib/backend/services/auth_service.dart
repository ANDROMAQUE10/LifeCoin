import 'package:finance_app/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class AuthService {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  User? _userFormFirebase(auth.User? user) {
    if (user == null) {
      return null;
    }
    return User(
      user.uid,
      user.email,
    );
    
  }

  Stream<User?>? get user {
    return _firebaseAuth.authStateChanges().map(_userFormFirebase);
  }

  Future<User?> singInWithEmailAndPassword(
      String email, String password) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email, 
      password: password
    );
    return _userFormFirebase(credential.user);
  }

  Future<User?> createUserWithEmailAndPassword(
      String email, String password) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return _userFormFirebase(credential.user);
  }

  Future<void> singOut() async {
    return await _firebaseAuth.signOut();
  }

  
}
