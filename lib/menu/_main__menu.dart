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
