import 'package:flutter/material.dart';
import '../tokens/typography.dart';
import '../tokens/colors.dart';

/// Átomo: Muestra el precio del producto.
class AtomicProductPrice extends StatelessWidget {
  final double price;

  const AtomicProductPrice({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Text(
      "\$${price.toStringAsFixed(2)}",
      style: AppTypography.heading.copyWith(color: AppColors.primary),
    );
  }
}
