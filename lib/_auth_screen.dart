import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import '_map-of-almaty_.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _phoneController = TextEditingController();
  final _otpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isOtpSent = false;
  String? _otp;
  late File _jsonFile;
  late Map<String, dynamic> _users;

  @override
  void initState() {
    super.initState();
    _initializeFile();
  }

  Future<void> _initializeFile() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/users.json');

    if (await file.exists()) {
      final content = await file.readAsString();
      _users = json.decode(content);
    } else {
      _users = {};
      await file.writeAsString(json.encode(_users));
    }
    _jsonFile = file;
  }

  Future<void> _saveToFile() async {
    await _jsonFile.writeAsString(json.encode(_users));
  }

  String _normalizePhoneNumber(String phone) {
    if (phone.startsWith('8') && phone.length == 11) {
      return '+7${phone.substring(1)}';
    } else if (phone.startsWith('+7') && phone.length == 12) {
      return phone;
    } else {
      return phone;
    }
  }

  void _sendOtp() {
    if (_formKey.currentState!.validate()) {
      String phone = _normalizePhoneNumber(_phoneController.text.trim());
      setState(() {
        _isOtpSent = true;
        _otp = (1000 + (9999 - 1000) * (DateTime.now().millisecondsSinceEpoch % 1000) ~/ 1000).toString();
      });

      // Симуляция автоматического заполнения кода
      Future.delayed(Duration(seconds: 2), _setOtpAutomatically);

      print("OTP for $phone: $_otp");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Код отправлен на номер $phone')),
      );

      // Переход на главный экран после отправки OTP
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
  }

  void _setOtpAutomatically() {
    if (_otp != null) {
      setState(() {
        _otpController.text = _otp!;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Код автоматически введен')),
      );
    }
  }

  void _verifyOtp() async {
    if (_otpController.text.trim() == _otp) {
      String phone = _normalizePhoneNumber(_phoneController.text.trim());
      _users[phone] = {'phone': phone, 'createdAt': DateTime.now().toIso8601String()};
      await _saveToFile();

      print("Пользователь с номером $phone успешно сохранен");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Успешный вход!')),
      );

      setState(() {
        _isOtpSent = false;
        _otp = null;
        _phoneController.clear();
        _otpController.clear();
      });

      // Переход на главный экран после успешной верификации OTP
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Неверный код подтверждения')),
      );
    }
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Авторизация по номеру телефона'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (!_isOtpSent) ...[
                TextFormField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                    labelText: 'Номер телефона',
                    border: OutlineInputBorder(),
                    prefixText: '',
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите номер телефона';
                    }
                    if (!RegExp(r'^8\d{10}$|^\+7\d{10}$').hasMatch(value)) {
                      return 'Введите корректный номер телефона (формат 8XXXXXXXXXX или +7XXXXXXXXXX)';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _sendOtp,
                  child: Text('Отправить код'),
                ),
              ] else ...[
                TextFormField(
                  controller: _otpController,
                  decoration: InputDecoration(
                    labelText: 'Введите код из SMS',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите код';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _verifyOtp,
                  child: Text('Подтвердить код'),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
