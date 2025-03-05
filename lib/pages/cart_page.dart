import 'package:flutter/material.dart';
import '../templates/cart_template.dart';

/// Página del carrito de compras
class CartPage extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;
  final double total;
  final Function(int) onIncrease;
  final Function(int) onDecrease;
  final Function(int) onDelete;
  final VoidCallback onPay;

  const CartPage({
    super.key,
    required this.cartItems,
    required this.total,
    required this.onIncrease,
    required this.onDecrease,
    required this.onDelete,
    required this.onPay,
  });

  @override
  Widget build(BuildContext context) {
    return CartTemplate(
      cartItems: cartItems,
      total: total,
      onIncrease: onIncrease,
      onDecrease: onDecrease,
      onDelete: onDelete,
      onPay: onPay,
    );
  }
}
