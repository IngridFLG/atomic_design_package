import 'package:flutter/material.dart';
import '../atoms/product_price.dart';
import '../tokens/typography.dart';

/// Molécula: Información principal del producto (título, categoría, precio).
class ProductDetailInfoMolecule extends StatelessWidget {
  final String title;
  final String category;
  final double price;

  const ProductDetailInfoMolecule({
    super.key,
    required this.title,
    required this.category,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTypography.heading),
        const SizedBox(height: 4),
        Text(category, style: AppTypography.caption),
        const SizedBox(height: 8),
        AtomicProductPrice(price: price),
      ],
    );
  }
}
