import 'package:flutter/material.dart';
import '../organisms/cart_content.dart';

/// Template: Estructura de la pantalla del carrito.
class CartTemplate extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;
  final double total;
  final Function(int) onIncrease;
  final Function(int) onDecrease;
  final Function(int) onDelete;
  final VoidCallback onPay;

  const CartTemplate({
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
    return Scaffold(
      appBar: AppBar(title: const Text("Carrito de Compras"), automaticallyImplyLeading: false),
      body: CartContentOrganism(
        cartItems: cartItems,
        total: total,
        onIncrease: onIncrease,
        onDecrease: onDecrease,
        onDelete: onDelete,
        onPay: onPay,
      ),
    );
  }
}
