import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/services.dart';  // Для обработки ошибок
import '_main_authorization_and_registration.dart';  // Ваш экран регистрации

class AuthScreen extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _signInWithGoogle(BuildContext context) async {
    try {
      // Получение учетных данных через Google
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Вход с использованием Google аккаунта
      await _auth.signInWithCredential(credential);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RegisterScreen()),  // Переход на экран регистрации или главный экран
      );
    } catch (e) {
      print('Error signing in with Google: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to sign in with Google')));
    }
  }

  Future<void> _signInWithPhone(BuildContext context) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: '+1 555-555-5555',  // Введите номер телефона для теста
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegisterScreen()),  // Переход на экран регистрации или главный экран
          );
        },
        verificationFailed: (FirebaseAuthException e) {
          print('Phone verification failed: ${e.message}');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to verify phone number')));
        },
        codeSent: (String verificationId, int? resendToken) {
          // Запрос кода подтверждения через SMS
          print('Code sent to phone number');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Code sent to phone number')));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Тайм-аут для автоматического извлечения кода
        },
      );
    } catch (e) {
      print('Error signing in with phone: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to sign in with phone')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authentication'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _signInWithGoogle(context),
              child: Text('Sign in with Google'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _signInWithPhone(context),
              child: Text('Sign in with Phone Number'),
            ),
          ],
        ),
      ),
    );
  }
}
