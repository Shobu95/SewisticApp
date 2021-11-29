import 'dart:math';

import 'package:sewistic_app/models/order/cart_item.dart';
import 'package:sewistic_app/models/product/product.dart';
import 'package:sewistic_app/services/product_services.dart';

class CartItemsServices {
  List<CartItem> _cartItems;
  List<Product> _products;
  final ProductService _productService = ProductService();
  Random random = Random();

  List<CartItem> getCartItems() {
    _cartItems = <CartItem>[];
    _products = _productService.getHomeProducts();

    _cartItems.add(CartItem(
        _products[1],
        ['V Neckline', 'Quarter sleeves', 'Standard Shalwar'],
        'Sample Provided',
        true));

    _cartItems.add(CartItem(
        _products[5],
        ['Round Neckline', 'Full Sleeves', 'Trouser'],
        'Sample Provided',
        true));

    _cartItems.add(CartItem(_products[10],
        ['No Cuff', 'Single Pocket', 'Shalwar'], 'Measurement Provided', true));

    _cartItems.add(CartItem(_products[13],
        ['Boat Neckline', 'Half Sleeves', 'Plazo'], 'Sample Provided', true));

    _cartItems.add(CartItem(_products[18],
        ['Star Neckline', 'Quarter Sleeves'], 'Measurement Provided', true));

    return _cartItems;
  }
}
