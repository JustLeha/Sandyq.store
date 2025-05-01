import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const _localizedValues = {
    'en': {
      'welcome': 'Welcome',
      'darkMode': 'Dark Mode',
      'language': 'Language',
      'login': 'Login',
      'register': 'No account? Register',
      'enterAccount': 'Login to account',
      'cart': 'Cart',
      'emptyCart': 'Your cart is empty',
      'total': 'Total',
      'checkout': 'Checkout',
      'profile': 'Profile',
      'orders': 'Orders',
      'favorites': 'Favorites',
      'addresses': 'Addresses',
      'appSettings': 'Settings',
      'logout': 'Logout',
      'home': 'Home',
    },
    'ru': {
      'welcome': 'Добро пожаловать',
      'darkMode': 'Тёмная тема',
      'language': 'Язык',
      'login': 'Войти',
      'register': 'Нет аккаунта? Зарегистрироваться',
      'enterAccount': 'Войти в аккаунт',
      'cart': 'Корзина',
      'emptyCart': 'Ваша корзина пуста',
      'total': 'Итого',
      'checkout': 'Оформить заказ',
      'profile': 'Профиль',
      'orders': 'Заказы',
      'favorites': 'Избранное',
      'addresses': 'Адреса',
      'appSettings': 'Настройки',
      'logout': 'Выйти',
      'home': 'Главная',
    },
  };

  String get welcome => _localizedValues[locale.languageCode]!['welcome']!;
  String get darkMode => _localizedValues[locale.languageCode]!['darkMode']!;
  String get language => _localizedValues[locale.languageCode]!['language']!;
  String get login => _localizedValues[locale.languageCode]!['login']!;
  String get register => _localizedValues[locale.languageCode]!['register']!;
  String get enterAccount =>
      _localizedValues[locale.languageCode]!['enterAccount']!;
  String get cart => _localizedValues[locale.languageCode]!['cart']!;
  String get emptyCart => _localizedValues[locale.languageCode]!['emptyCart']!;
  String get total => _localizedValues[locale.languageCode]!['total']!;
  String get checkout => _localizedValues[locale.languageCode]!['checkout']!;
  String get profile => _localizedValues[locale.languageCode]!['profile']!;
  String get orders => _localizedValues[locale.languageCode]!['orders']!;
  String get favorites => _localizedValues[locale.languageCode]!['favorites']!;
  String get addresses => _localizedValues[locale.languageCode]!['addresses']!;
  String get appSettings =>
      _localizedValues[locale.languageCode]!['appSettings']!;
  String get logout => _localizedValues[locale.languageCode]!['logout']!;
  String get home => _localizedValues[locale.languageCode]!['home']!;
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ru'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
