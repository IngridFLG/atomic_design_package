import 'package:flutter/material.dart';

/// Átomo: Control para aumentar o disminuir la cantidad de un producto.
class AtomicQuantityControl extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  const AtomicQuantityControl({
    super.key,
    required this.quantity,
    required this.onIncrease,
    required this.onDecrease,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.remove, color: Colors.red),
          onPressed: onDecrease,
        ),
        Text("$quantity", style: const TextStyle(fontSize: 18)),
        IconButton(
          icon: const Icon(Icons.add, color: Colors.green),
          onPressed: onIncrease,
        ),
      ],
    );
  }
}
