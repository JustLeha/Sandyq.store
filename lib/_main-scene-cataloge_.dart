import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoriesScreen(),
    );
  }
}

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> categories = const [
    {'title': 'Детские товары,\nИгрушки', 'icon': Icons.toys},
    {'title': 'Строительство\nи Ремонт', 'icon': Icons.construction},
    {'title': 'Одежды и\nКостюмы', 'icon': Icons.checkroom},
    {'title': 'Спортивный\nИнвентарь', 'icon': Icons.directions_bike},
    {'title': 'Коньки и лыжи', 'icon': Icons.ac_unit},
    {'title': 'Видеокамеры и\nфотоаппараты', 'icon': Icons.camera_alt},
    {'title': 'Украшение', 'icon': Icons.watch},
    {'title': 'Кэмпинг', 'icon': Icons.watch},
    {'title': 'Декор', 'icon': Icons.celebration},
    {'title': 'Ноутбуки', 'icon': Icons.laptop},
    {'title': 'Дроны', 'icon': Icons.air},
    {'title': 'Книги', 'icon': Icons.book},
    {'title': 'Test', 'icon': Icons.book},
    {'title': 'test', 'icon': Icons.book},
    {'title': 'test', 'icon': Icons.book},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: "Поиск товаров",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Категории",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return CategoryCard(
                    title: category['title'],
                    icon: category['icon'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Карта'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Каталог'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Избранное'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Корзина'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль'),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.orange),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}