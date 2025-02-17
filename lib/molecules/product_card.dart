import 'package:flutter/material.dart';
import '../atoms/product_image.dart';
import '../tokens/typography.dart';
import '../tokens/colors.dart';

/// Molécula: Tarjeta de producto.
class ProductCardMolecule extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double price;
  final VoidCallback onTap;

  const ProductCardMolecule({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12.0),
        leading: AtomicProductImage(imageUrl: imageUrl),
        title: Text(title, style: AppTypography.body),
        subtitle: Text(
          "\$${price.toStringAsFixed(2)}",
          style: AppTypography.heading.copyWith(color: AppColors.primary),
        ),
        onTap: onTap,
      ),
    );
  }
}
