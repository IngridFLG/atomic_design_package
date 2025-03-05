import 'package:flutter/material.dart';

/// Átomo: Botón para eliminar un producto del carrito.
class AtomicDeleteButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AtomicDeleteButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete, color: Colors.red),
      onPressed: onPressed,
    );
  }
}
