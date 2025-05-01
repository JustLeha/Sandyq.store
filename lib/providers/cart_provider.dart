import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  final List<Map<String, dynamic>> _items = [];
  bool _isLoading = false;

  List<Map<String, dynamic>> get items => _items;
  bool get isLoading => _isLoading;

  double get totalPrice {
    return _items.fold(
        0, (sum, item) => sum + (item['price'] * item['quantity']));
  }

  void addToCart(Map<String, dynamic> product) {
    final existingItemIndex =
        _items.indexWhere((item) => item['id'] == product['id']);

    if (existingItemIndex != -1) {
      _items[existingItemIndex]['quantity'] += 1;
    } else {
      _items.add({
        ...product,
        'quantity': 1,
      });
    }

    notifyListeners();
  }

  void updateQuantity(String itemId, int quantity) {
    final index = _items.indexWhere((item) => item['id'] == itemId);
    if (index != -1) {
      _items[index]['quantity'] = quantity;
      notifyListeners();
    }
  }

  void removeFromCart(String itemId) {
    _items.removeWhere((item) => item['id'] == itemId);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
