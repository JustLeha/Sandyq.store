// import 'package:flutter/material.dart';
// import 'package:sandyq/menu/_cart_screen.dart';
// import 'package:sandyq/menu/_profile_screen.dart';
// import 'package:sandyq/menu/_favorites_screen.dart';
// import '_map-of-almaty_.dart';
//
// class MainScreen extends StatefulWidget {
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   int _selectedIndex = 1;
//
//   final List<Widget> _screens = [
//     FavoritesScreen(),
//     MapPage(),
//     CartScreen(),
//     ProfileScreen(),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.star),
//             label: 'Избранные',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.map),
//             label: 'Карта',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Корзина',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'Профиль',
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
// import 'package:sandyq/_main-scene-cataloge_.dart';
class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Карта'),
    Text('Каталог'),
    Text('Избранное'),
    Text('Корзина'),
    Text('Профиль'),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Карта',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.list),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black, // Цвет выбранного элемента
        unselectedItemColor: Colors.white70, // Цвет невыбранного элемента
        backgroundColor: Colors.orange, // Темный фон меню
        elevation: 10, // Поднятие меню для создания тени
        type: BottomNavigationBarType.fixed, // Фиксированное меню
        onTap: _onItemTapped,
      ),
    );
  }
}