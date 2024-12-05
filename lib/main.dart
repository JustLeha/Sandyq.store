import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '_auth_screen.dart'; // Ваш экран авторизации
//import '_sett_ing_.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Инициализация фреймворка
  await Firebase.initializeApp(); // Инициализация Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  AuthScreen(), // Экран авторизации
    );
  }
}
