import 'package:flutter/material.dart';
import '_main_login_reges_scene.dart';
import 'menu/_main__menu.dart'; // Ваш экран авторизации
//import '_sett_ing_.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Инициализация фреймворка
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sandyq',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home:  Sandyq_main_screen(), // Экран авторизации
    );
  }
}
