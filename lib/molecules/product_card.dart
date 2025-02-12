import 'package:flutter/material.dart';
import '../atoms/product_image.dart';
import '../tokens/typography.dart';
import '../tokens/colors.dart';
import '../models/product.dart';

/// Molécula: Tarjeta de producto.
class ProductCardMolecule extends StatelessWidget {
  final Product product; // Ahora recibe un objeto Product
  final VoidCallback onTap;

  const ProductCardMolecule({
    super.key,
    required this.product,
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
        leading: AtomicProductImage(imageUrl: product.image),
        title: Text(product.title, style: AppTypography.body),
        subtitle: Text("\$${product.price}", style: AppTypography.heading.copyWith(color: AppColors.primary)),
        onTap: onTap,
      ),
    );
  }
}
