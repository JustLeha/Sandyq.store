import 'package:flutter/material.dart';

class ProductsProvider with ChangeNotifier {
  final List<Map<String, dynamic>> _products = [
    // Детские товары и игрушки
    {
      'id': '1',
      'title': 'Детский велосипед',
      'price': 1500,
      'category': 'Детские товары,\nИгрушки',
      'image':
          'https://images.unsplash.com/photo-1532298229144-0ec0c57515c7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Отличный велосипед для детей от 3 до 6 лет',
    },
    {
      'id': '2',
      'title': 'Конструктор LEGO',
      'price': 800,
      'category': 'Детские товары,\nИгрушки',
      'image':
          'https://images.unsplash.com/photo-1606811842929-5bcdd5bafb0d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Набор LEGO City для детей от 6 лет',
    },
    {
      'id': '3',
      'title': 'Кукла Barbie',
      'price': 500,
      'category': 'Детские товары,\nИгрушки',
      'image':
          'https://images.unsplash.com/photo-1600269452121-4f2416e55c28?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Кукла Barbie с аксессуарами',
    },

    // Строительство и ремонт
    {
      'id': '4',
      'title': 'Набор инструментов',
      'price': 1000,
      'category': 'Строительство\nи Ремонт',
      'image':
          'https://images.unsplash.com/photo-1585771724684-38269d6639fd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Профессиональный набор инструментов для ремонта',
    },
    {
      'id': '5',
      'title': 'Перфоратор',
      'price': 2000,
      'category': 'Строительство\nи Ремонт',
      'image':
          'https://images.unsplash.com/photo-1585771724684-38269d6639fd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Мощный перфоратор для ремонтных работ',
    },
    {
      'id': '6',
      'title': 'Шуруповерт',
      'price': 1500,
      'category': 'Строительство\nи Ремонт',
      'image':
          'https://images.unsplash.com/photo-1585771724684-38269d6639fd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Аккумуляторный шуруповерт',
    },

    // Одежда и костюмы
    {
      'id': '7',
      'title': 'Спортивный костюм',
      'price': 800,
      'category': 'Одежды и\nКостюмы',
      'image':
          'https://images.unsplash.com/photo-1552374196-1ab2a1c593e8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Удобный спортивный костюм для тренировок',
    },
    {
      'id': '8',
      'title': 'Джинсы',
      'price': 600,
      'category': 'Одежды и\nКостюмы',
      'image':
          'https://images.unsplash.com/photo-1542272604-787c3835535d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Классические джинсы',
    },
    {
      'id': '9',
      'title': 'Футболка',
      'price': 300,
      'category': 'Одежды и\nКостюмы',
      'image':
          'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Хлопковая футболка',
    },

    // Спортивный инвентарь
    {
      'id': '10',
      'title': 'Футбольный мяч',
      'price': 300,
      'category': 'Спортивный\nИнвентарь',
      'image':
          'https://images.unsplash.com/photo-1612872087720-bb876e2e67d1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Качественный футбольный мяч для игры',
    },
    {
      'id': '11',
      'title': 'Беговая дорожка',
      'price': 2000,
      'category': 'Спортивный\nИнвентарь',
      'image':
          'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Электрическая беговая дорожка',
    },
    {
      'id': '12',
      'title': 'Гантели',
      'price': 500,
      'category': 'Спортивный\nИнвентарь',
      'image':
          'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Набор гантелей 2-10 кг',
    },

    // Коньки и лыжи
    {
      'id': '13',
      'title': 'Горные лыжи',
      'price': 2500,
      'category': 'Коньки и лыжи',
      'image':
          'https://images.unsplash.com/photo-1518604666860-9ed391f76460?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Профессиональные горные лыжи',
    },
    {
      'id': '14',
      'title': 'Коньки',
      'price': 1500,
      'category': 'Коньки и лыжи',
      'image':
          'https://images.unsplash.com/photo-1518604666860-9ed391f76460?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Фигурные коньки',
    },
    {
      'id': '15',
      'title': 'Лыжные палки',
      'price': 500,
      'category': 'Коньки и лыжи',
      'image':
          'https://images.unsplash.com/photo-1518604666860-9ed391f76460?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Карбоновые лыжные палки',
    },

    // Видеокамеры и фотоаппараты
    {
      'id': '16',
      'title': 'Зеркальный фотоаппарат',
      'price': 3000,
      'category': 'Видеокамеры и\nфотоаппараты',
      'image':
          'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Профессиональный зеркальный фотоаппарат',
    },
    {
      'id': '17',
      'title': 'Экшн-камера',
      'price': 2000,
      'category': 'Видеокамеры и\nфотоаппараты',
      'image':
          'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Экшн-камера 4K',
    },
    {
      'id': '18',
      'title': 'Объектив',
      'price': 1500,
      'category': 'Видеокамеры и\nфотоаппараты',
      'image':
          'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Широкоугольный объектив',
    },

    // Украшения
    {
      'id': '19',
      'title': 'Наручные часы',
      'price': 1000,
      'category': 'Украшение',
      'image':
          'https://images.unsplash.com/photo-1524805444758-089113d48a6d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Элегантные наручные часы',
    },
    {
      'id': '20',
      'title': 'Серебряное кольцо',
      'price': 800,
      'category': 'Украшение',
      'image':
          'https://images.unsplash.com/photo-1611591437281-460bfbe1220a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Серебряное кольцо с камнем',
    },
    {
      'id': '21',
      'title': 'Золотая цепочка',
      'price': 1500,
      'category': 'Украшение',
      'image':
          'https://images.unsplash.com/photo-1611591437281-460bfbe1220a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Золотая цепочка 585 пробы',
    },

    // Кэмпинг
    {
      'id': '22',
      'title': 'Палатка',
      'price': 2000,
      'category': 'Кэмпинг',
      'image':
          'https://images.unsplash.com/photo-1487730116645-74489c95b41b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Просторная палатка для кемпинга',
    },
    {
      'id': '23',
      'title': 'Спальный мешок',
      'price': 1000,
      'category': 'Кэмпинг',
      'image':
          'https://images.unsplash.com/photo-1487730116645-74489c95b41b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Теплый спальный мешок',
    },
    {
      'id': '24',
      'title': 'Рюкзак',
      'price': 800,
      'category': 'Кэмпинг',
      'image':
          'https://images.unsplash.com/photo-1487730116645-74489c95b41b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Туристический рюкзак 60л',
    },

    // Декор
    {
      'id': '25',
      'title': 'Декоративная ваза',
      'price': 600,
      'category': 'Декор',
      'image':
          'https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Стильная декоративная ваза',
    },
    {
      'id': '26',
      'title': 'Картина',
      'price': 1000,
      'category': 'Декор',
      'image':
          'https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Декоративная картина',
    },
    {
      'id': '27',
      'title': 'Светильник',
      'price': 800,
      'category': 'Декор',
      'image':
          'https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Настольный светильник',
    },

    // Ноутбуки
    {
      'id': '28',
      'title': 'Игровой ноутбук',
      'price': 5000,
      'category': 'Ноутбуки',
      'image':
          'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Мощный игровой ноутбук',
    },
    {
      'id': '29',
      'title': 'Ультрабук',
      'price': 4000,
      'category': 'Ноутбуки',
      'image':
          'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Легкий ультрабук',
    },
    {
      'id': '30',
      'title': 'Ноутбук для работы',
      'price': 3000,
      'category': 'Ноутбуки',
      'image':
          'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Ноутбук для офисной работы',
    },

    // Дроны
    {
      'id': '31',
      'title': 'Квадрокоптер',
      'price': 3000,
      'category': 'Дроны',
      'image':
          'https://images.unsplash.com/photo-1513506003901-1e6a229e2d15?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Профессиональный квадрокоптер с камерой',
    },
    {
      'id': '32',
      'title': 'Мини-дрон',
      'price': 1500,
      'category': 'Дроны',
      'image':
          'https://images.unsplash.com/photo-1513506003901-1e6a229e2d15?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Компактный мини-дрон',
    },
    {
      'id': '33',
      'title': 'Дрон с камерой',
      'price': 2500,
      'category': 'Дроны',
      'image':
          'https://images.unsplash.com/photo-1513506003901-1e6a229e2d15?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Дрон с HD камерой',
    },

    // Книги
    {
      'id': '34',
      'title': 'Книга по программированию',
      'price': 400,
      'category': 'Книги',
      'image':
          'https://images.unsplash.com/photo-1543002588-bfa74002ed7e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Учебник по программированию на Flutter',
    },
    {
      'id': '35',
      'title': 'Художественная литература',
      'price': 300,
      'category': 'Книги',
      'image':
          'https://images.unsplash.com/photo-1543002588-bfa74002ed7e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Сборник рассказов',
    },
    {
      'id': '36',
      'title': 'Детская книга',
      'price': 200,
      'category': 'Книги',
      'image':
          'https://images.unsplash.com/photo-1543002588-bfa74002ed7e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3',
      'description': 'Сказки для детей',
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

  List<Map<String, dynamic>> getAllProducts() {
    return _products;
  }
}
