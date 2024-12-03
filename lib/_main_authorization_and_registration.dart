//этот кусок кода пока стоит для крсоты пока что


import 'package:flutter/material.dart';
import 'main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Логотип или заголовок
                Image.asset('assets/images/logo.png'), // Замените на ваш логотип

                SizedBox(height: 20),

                // Поле для ввода email
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 16),

                // Поле для ввода пароля
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 8),

                // Ссылка на восстановление пароля
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Forgot Password?'),
                  ),
                ),

                SizedBox(height: 24),

                // Кнопка входа
                ElevatedButton(
                  onPressed: () {
                    // Логика авторизации
                  },
                  child: Text('LOGIN'),
                ),

                SizedBox(height: 16),

                // Текст "OR"
                Text('OR'),

                SizedBox(height: 16),

                // Кнопка авторизации через Google
                ElevatedButton.icon(
                  onPressed: () {
                    // Логика авторизации через Google
                  },
                  icon: Icon(Icons.icecream),
                  label: Text('Sign-in with Google'),
                ),

                SizedBox(height: 16),

                // Ссылка на регистрацию
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {},
                      child: Text('Signup'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}