import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  final List<Map<String, dynamic>> favoriteItems = [
    {
      'title': 'Аренда велосипеда',
      'price': '2000 KZT/день',
      'image': 'https://via.placeholder.com/150',
    },
    {
      'title': 'Аренда палатки',
      'price': '3000 KZT/день',
      'image': 'https://via.placeholder.com/150',
    },
    {
      'title': 'Аренда кофемашины',
      'price': '5000 KZT/день',
      'image': 'https://via.placeholder.com/150',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Избранное'),
        centerTitle: true,
      ),
      body: favoriteItems.isEmpty
          ? const Center(
        child: Text(
          'Ваш список избранного пуст',
          style: TextStyle(fontSize: 18),
        ),
      )
          : ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          final item = favoriteItems[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: Image.network(
                item['image'],
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(item['title']),
              subtitle: Text(item['price']),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  // Логика удаления из избранного
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${item['title']} удалено из избранного'),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
