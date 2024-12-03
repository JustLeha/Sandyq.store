import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  final List<Map<String, dynamic>> favoriteItems = [
    {
      'title': 'Аренда велосипеда',
      'price': '2000 KZT/день',
      'image': 'https://stryderbikes.com/cdn/shop/files/VolticX27BlkRed.jpg?v=1723894321',
    },
    {
      'title': 'Аренда палатки',
      'price': '3000 KZT/день',
      'image': 'https://cdn11.bigcommerce.com/s-opskm61a5f/images/stencil/1280x1280/products/1192/7283/715-63__2__59637.1698188330.jpg?c=1',
    },
    {
      'title': 'Аренда кофемашины',
      'price': '5000 KZT/день',
      'image': 'https://m.media-amazon.com/images/I/6162rBwVgeL._AC_SL1500_.jpg',
    },  {
      'title': 'Аренда тест',
      'price': '5000 KZT/день',
      'image': 'https://m.media-amazon.com/images/I/6162rBwVgeL._AC_SL1500_.jpg',
    },  {
      'title': 'Аренда машины',
      'price': '5000 KZT/день',
      'image': 'https://cdn.leroymerlin.ru/lmru/image/upload/f_auto/q_auto/dpr_1.0/c_pad/w_1000/h_1000/v1639037192/lmcode/FI4Uj0r740SI-aoCcB4Pbw/18513390.png',
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
// GridButton(
// title: "Категория товаров",
// icon: Icons.grid_view,
// onTap: () {
// Navigator.push(
// context,
// MaterialPageRoute(builder: (context) => const CategoriesScreen()),
// );
// },
// ),