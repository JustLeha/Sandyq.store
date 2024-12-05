import 'package:flutter/material.dart';
import 'package:sandyq/_sett_ing_.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Список для вкладок
  final List<Widget> _pages = [
    // Первая вкладка: Избранное
    Center(
      child: Text(
        'Избранное',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    ),

    // Вторая вкладка: Профиль
    Center(
      child: Text(
        'Профиль',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

      ),
    ),
  ];




  // Метод для смены вкладки
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SettingsScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главный экран'),
      ),
      body: _pages[_selectedIndex], // Выбираем страницу в зависимости от вкладки
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Профиль',

          )
        ],
      ),
    );
  }
}
