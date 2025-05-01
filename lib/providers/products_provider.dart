import 'package:flutter/material.dart';

class ProductsProvider with ChangeNotifier {
  final List<Map<String, dynamic>> _products = [
    {
      'id': '1',
      'title': 'Детский велосипед',
      'price': 15000,
      'category': 'Детские товары, Игрушки',
      'image': 'https://via.placeholder.com/150',
      'description': 'Отличный велосипед для детей от 3 до 6 лет',
    },
    {
      'id': '2',
      'title': 'Набор инструментов',
      'price': 5000,
      'category': 'Строительство и Ремонт',
      'image': 'https://via.placeholder.com/150',
      'description': 'Профессиональный набор инструментов для ремонта',
    },
    {
      'id': '3',
      'title': 'Спортивный костюм',
      'price': 8000,
      'category': 'Одежды и Костюмы',
      'image': 'https://via.placeholder.com/150',
      'description': 'Удобный спортивный костюм для тренировок',
    },
    {
      'id': '4',
      'title': 'Футбольный мяч',
      'price': 3000,
      'category': 'Спортивный Инвентарь',
      'image': 'https://via.placeholder.com/150',
      'description': 'Качественный футбольный мяч для игры',
    },
    {
      'id': '5',
      'title': 'Горные лыжи',
      'price': 25000,
      'category': 'Коньки и лыжи',
      'image': 'https://via.placeholder.com/150',
      'description': 'Профессиональные горные лыжи',
    },
    {
      'id': '6',
      'title': 'Зеркальный фотоаппарат',
      'price': 45000,
      'category': 'Видеокамеры и фотоаппараты',
      'image': 'https://via.placeholder.com/150',
      'description': 'Профессиональный зеркальный фотоаппарат',
    },
  ];

  List<Map<String, dynamic>> get products => _products;

  List<Map<String, dynamic>> getProductsByCategory(String category) {
    return _products
        .where((product) => product['category'] == category)
        .toList();
  }

  List<String> get categories {
    return _products
        .map((product) => product['category'] as String)
        .toSet()
        .toList();
  }

  Map<String, dynamic>? getProductById(String id) {
    try {
      return _products.firstWhere((product) => product['id'] == id);
    } catch (e) {
      return null;
    }
  }
}
