import 'package:flutter/material.dart';
import '../atoms/delete_button.dart';
import '../atoms/quantity_control.dart';

/// Molécula: Card de un producto dentro del carrito.
class CartItemMolecule extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double price;
  final int quantity;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;
  final VoidCallback onDelete;

  const CartItemMolecule({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.quantity,
    required this.onIncrease,
    required this.onDecrease,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Image.network(imageUrl, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("\$${price.toStringAsFixed(2)}"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AtomicQuantityControl(
              quantity: quantity,
              onIncrease: onIncrease,
              onDecrease: onDecrease,
            ),
            AtomicDeleteButton(onPressed: onDelete),
          ],
        ),
      ),
    );
  }
}
