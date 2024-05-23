import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<User?> signInWithEmail(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;

      if (user != null && await _isAdmin(user.email!)) {
        return user;
      } else {
        await signOut();
        return null;
      }
    } catch (e) {
      print('Error: $e');
      // Provide more specific error handling
      if (e is FirebaseAuthException) {
        switch (e.code) {
          case 'user-not-found':
            throw AuthException('No user found for that email.');
          case 'wrong-password':
            throw AuthException('Wrong password provided.');
          default:
            throw AuthException('An error occurred. Please try again.');
        }
      }
      return null;
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<bool> _isAdmin(String email) async {
    final QuerySnapshot result = await _firestore
        .collection('admins')
        .where('email', isEqualTo: email)
        .get();
    return result.docs.isNotEmpty;
  }
}

class AuthException implements Exception {
  final String message;
  AuthException(this.message);
}
