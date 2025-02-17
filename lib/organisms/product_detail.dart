import 'package:flutter/material.dart';
import '../atoms/product_detail_image.dart';
import '../atoms/add_to_cart_button.dart';
import '../molecules/product_detail_info.dart';
import '../molecules/product_detail_description.dart';

/// Organismo: Contiene toda la información detallada del producto.
class ProductDetailOrganism extends StatelessWidget {
  final String title;
  final String category;
  final String imageUrl;
  final double price;
  final String description;
  final VoidCallback onAddToCart;

  const ProductDetailOrganism({
    super.key,
    required this.title,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.description,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AtomicProductDetailImage(imageUrl: imageUrl),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ProductDetailInfoMolecule(
            title: title,
            category: category,
            price: price,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ProductDetailDescriptionMolecule(description: description),
        ),
        const SizedBox(height: 16),
        Center(
          child: AtomicAddToCartButton(onPressed: onAddToCart),
        ),
      ],
    );
  }
}
