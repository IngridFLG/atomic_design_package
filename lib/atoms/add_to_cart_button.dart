import 'package:flutter/material.dart';
import '../tokens/colors.dart';

/// Átomo: Botón para agregar al carrito.
class AtomicAddToCartButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AtomicAddToCartButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: const Text('Agregar al carrito', style: TextStyle(color: Colors.white)),
    );
  }
}
