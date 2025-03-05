import 'package:flutter/material.dart';
import '../molecules/cart_item.dart';
import '../atoms/pay_button.dart';

/// Organismo: Contenido del carrito con productos y total.
class CartContentOrganism extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;
  final double total;
  final Function(int) onIncrease;
  final Function(int) onDecrease;
  final Function(int) onDelete;
  final VoidCallback onPay;

  const CartContentOrganism({
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
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              final item = cartItems[index];
              return CartItemMolecule(
                title: item["title"],
                imageUrl: item["image"],
                price: item["price"],
                quantity: item["quantity"],
                onIncrease: () => onIncrease(index),
                onDecrease: () => onDecrease(index),
                onDelete: () => onDelete(index),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Total: \$${total.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              AtomicPayButton(onPressed: onPay),
            ],
          ),
        ),
      ],
    );
  }
}
