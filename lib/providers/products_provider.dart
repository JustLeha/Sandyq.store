import 'package:flutter/material.dart';

class ProductsProvider with ChangeNotifier {
  final List<Map<String, dynamic>> _products = [
    // Детские товары и игрушки
    {
      'id': '1',
      'title': 'Детский велосипед',
      'price': 1500,
      'category': 'Детские товары,\nИгрушки',
      'image': 'https://images.pexels.com/photos/248547/pexels-photo-248547.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'description': 'Отличный велосипед для детей от 3 до 6 лет',
    },
    {
      'id': '2',
      'title': 'Конструктор LEGO',
      'price': 800,
      'category': 'Детские товары,\nИгрушки',
      'image': 'https://images.pexels.com/photos/5966228/pexels-photo-5966228.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'description': 'Набор LEGO City для детей от 6 лет',
    },
    {
      'id': '3',
      'title': 'Кукла Barbie',
      'price': 500,
      'category': 'Детские товары,\nИгрушки',
      'image': 'https://images.pexels.com/photos/5878509/pexels-photo-5878509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'description': 'Кукла Barbie с аксессуарами',
    },

    // Строительство и ремонт
    {
      'id': '4',
      'title': 'Набор инструментов',
      'price': 1000,
      'category': 'Строительство\nи Ремонт',
      'image': 'https://images.pexels.com/photos/209235/pexels-photo-209235.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'description': 'Профессиональный набор инструментов для ремонта',
    },
    {
      'id': '5',
      'title': 'Перфоратор',
      'price': 2000,
      'category': 'Строительство\nи Ремонт',
      'image': 'https://images.pexels.com/photos/162553/keys-workshop-mechanic-tools-162553.jpeg',
      'description': 'Мощный перфоратор для ремонтных работ',
    },
    {
      'id': '6',
      'title': 'Шуруповерт',
      'price': 1500,
      'category': 'Строительство\nи Ремонт',
      'image': 'https://images.pexels.com/photos/159306/construction-site-build-construction-work-159306.jpeg',
      'description': 'Аккумуляторный шуруповерт',
    },

    // Одежда и костюмы
    {
      'id': '7',
      'title': 'Спортивный костюм',
      'price': 800,
      'category': 'Одежда и\nКостюмы',
      'image': 'https://images.pexels.com/photos/1484808/pexels-photo-1484808.jpeg',
      'description': 'Удобный спортивный костюм для тренировок',
    },
    {
      'id': '8',
      'title': 'Джинсы',
      'price': 600,
      'category': 'Одежда и\nКостюмы',
      'image': 'https://images.pexels.com/photos/1598507/pexels-photo-1598507.jpeg',
      'description': 'Классические джинсы',
    },
    {
      'id': '9',
      'title': 'Футболка',
      'price': 300,
      'category': 'Одежда и\nКостюмы',
      'image': 'https://images.pexels.com/photos/428338/pexels-photo-428338.jpeg',
      'description': 'Хлопковая футболка',
    },

    // Спортивный инвентарь
    {
      'id': '10',
      'title': 'Футбольный мяч',
      'price': 300,
      'category': 'Спортивный\nИнвентарь',
      'image': 'https://images.pexels.com/photos/47730/the-ball-stadion-football-the-pitch-47730.jpeg',
      'description': 'Качественный футбольный мяч для игры',
    },
    {
      'id': '11',
      'title': 'Беговая дорожка',
      'price': 2000,
      'category': 'Спортивный\nИнвентарь',
      'image': 'https://images.pexels.com/photos/1954524/pexels-photo-1954524.jpeg',
      'description': 'Электрическая беговая дорожка',
    },
    {
      'id': '12',
      'title': 'Гантели',
      'price': 500,
      'category': 'Спортивный\nИнвентарь',
      'image': 'https://images.pexels.com/photos/1220757/pexels-photo-1220757.jpeg',
      'description': 'Набор гантелей 2-10 кг',
    },

    // Коньки и лыжи
    {
      'id': '13',
      'title': 'Горные лыжи',
      'price': 2500,
      'category': 'Коньки и лыжи',
      'image': 'https://images.pexels.com/photos/2660276/pexels-photo-2660276.jpeg',
      'description': 'Профессиональные горные лыжи',
    },
    {
      'id': '14',
      'title': 'Коньки',
      'price': 1500,
      'category': 'Коньки и лыжи',
      'image': 'https://images.pexels.com/photos/189296/pexels-photo-189296.jpeg',
      'description': 'Фигурные коньки',
    },
    {
      'id': '15',
      'title': 'Лыжные палки',
      'price': 500,
      'category': 'Коньки и лыжи',
      'image': 'https://images.pexels.com/photos/2660276/pexels-photo-2660276.jpeg',
      'description': 'Карбоновые лыжные палки',
    },

    // Видеокамеры и фотоаппараты
    {
      'id': '16',
      'title': 'Зеркальный фотоаппарат',
      'price': 3000,
      'category': 'Видеокамеры и\nфотоаппараты',
      'image': 'https://images.pexels.com/photos/51383/photo-camera-subject-photographer-51383.jpeg',
      'description': 'Профессиональный зеркальный фотоаппарат',
    },
    {
      'id': '17',
      'title': 'Экшн-камера',
      'price': 2000,
      'category': 'Видеокамеры и\nфотоаппараты',
      'image': 'https://images.pexels.com/photos/163036/mario-luigi-yoschi-figures-163036.jpeg',
      'description': 'Экшн-камера 4K',
    },
    {
      'id': '18',
      'title': 'Объектив',
      'price': 1500,
      'category': 'Видеокамеры и\nфотоаппараты',
      'image': 'https://images.pexels.com/photos/301347/pexels-photo-301347.jpeg',
      'description': 'Широкоугольный объектив',
    },

    // Украшения
    {
      'id': '19',
      'title': 'Наручные часы',
      'price': 1000,
      'category': 'Украшения',
      'image': 'https://images.pexels.com/photos/277319/pexels-photo-277319.jpeg',
      'description': 'Элегантные наручные часы',
    },
    {
      'id': '20',
      'title': 'Серебряное кольцо',
      'price': 800,
      'category': 'Украшения',
      'image': 'https://images.pexels.com/photos/265906/pexels-photo-265906.jpeg',
      'description': 'Серебряное кольцо с камнем',
    },
    {
      'id': '21',
      'title': 'Золотая цепочка',
      'price': 1500,
      'category': 'Украшения',
      'image': 'https://images.pexels.com/photos/978982/pexels-photo-978982.jpeg',
      'description': 'Золотая цепочка 585 пробы',
    },

    // Кэмпинг
    {
      'id': '22',
      'title': 'Палатка',
      'price': 2000,
      'category': 'Кэмпинг',
      'image': 'https://images.pexels.com/photos/803226/pexels-photo-803226.jpeg',
      'description': 'Просторная палатка для кемпинга',
    },
    {
      'id': '23',
      'title': 'Спальный мешок',
      'price': 1000,
      'category': 'Кэмпинг',
      'image': 'https://images.pexels.com/photos/2422265/pexels-photo-2422265.jpeg',
      'description': 'Теплый спальный мешок',
    },
    {
      'id': '24',
      'title': 'Рюкзак',
      'price': 800,
      'category': 'Кэмпинг',
      'image': 'https://images.pexels.com/photos/904616/pexels-photo-904616.jpeg',
      'description': 'Туристический рюкзак 60л',
    },

    // Декор
    {
      'id': '25',
      'title': 'Декоративная ваза',
      'price': 600,
      'category': 'Декор',
      'image': 'https://images.pexels.com/photos/484152/pexels-photo-484152.jpeg',
      'description': 'Стильная декоративная ваза',
    },
    {
      'id': '26',
      'title': 'Картина',
      'price': 1000,
      'category': 'Декор',
      'image': 'https://images.pexels.com/photos/102127/pexels-photo-102127.jpeg',
      'description': 'Декоративная картина',
    },
    {
      'id': '27',
      'title': 'Светильник',
      'price': 800,
      'category': 'Декор',
      'image': 'https://images.pexels.com/photos/132340/pexels-photo-132340.jpeg',
      'description': 'Настольный светильник',
    },

    // Ноутбуки
    {
      'id': '28',
      'title': 'Игровой ноутбук',
      'price': 5000,
      'category': 'Ноутбуки',
      'image': 'https://images.pexels.com/photos/18105/pexels-photo.jpg',
      'description': 'Мощный игровой ноутбук',
    },
    {
      'id': '29',
      'title': 'Ультрабук',
      'price': 4000,
      'category': 'Ноутбуки',
      'image': 'https://images.pexels.com/photos/7974/pexels-photo.jpg',
      'description': 'Легкий ультрабук',
    },
    {
      'id': '30',
      'title': 'Ноутбук для работы',
      'price': 3000,
      'category': 'Ноутбуки',
      'image': 'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'description': 'Ноутбук для офисной работы',
    },

    // Дроны
    {
      'id': '31',
      'title': 'Квадрокоптер',
      'price': 3000,
      'category': 'Дроны',
      'image': 'https://images.pexels.com/photos/399946/pexels-photo-399946.jpeg',
      'description': 'Профессиональный квадрокоптер с камерой',
    },
    {
      'id': '32',
      'title': 'Мини-дрон',
      'price': 1500,
      'category': 'Дроны',
      'image': 'https://images.pexels.com/photos/1275929/pexels-photo-1275929.jpeg',
      'description': 'Компактный мини-дрон',
    },
    {
      'id': '33',
      'title': 'Дрон с камерой',
      'price': 2500,
      'category': 'Дроны',
      'image': 'https://images.pexels.com/photos/3593922/pexels-photo-3593922.jpeg',
      'description': 'Дрон с HD камерой',
    },

    // Книги
    {
      'id': '34',
      'title': 'Книга по программированию',
      'price': 400,
      'category': 'Книги',
      'image': 'https://images.pexels.com/photos/1926988/pexels-photo-1926988.jpeg',
      'description': 'Учебник по программированию на Flutter',
    },
    {
      'id': '35',
      'title': 'Художественная литература',
      'price': 300,
      'category': 'Книги',
      'image': 'https://images.pexels.com/photos/904616/pexels-photo-904616.jpeg',
      'description': 'Сборник рассказов',
    },
    {
      'id': '36',
      'title': 'Детская книга',
      'price': 200,
      'category': 'Книги',
      'image': 'https://images.pexels.com/photos/159711/books-bookstore-book-reading-159711.jpeg',
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