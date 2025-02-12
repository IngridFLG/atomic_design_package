import 'package:flutter/material.dart';
import '../atoms/product_detail_image.dart';
import '../atoms/add_to_cart_button.dart';
import '../molecules/product_detail_info.dart';
import '../molecules/product_detail_description.dart';
import '../models/product.dart';

/// Organismo: Contiene toda la información detallada del producto.
class ProductDetailOrganism extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;

  const ProductDetailOrganism({
    super.key,
    required this.product,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AtomicProductDetailImage(imageUrl: product.image),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ProductDetailInfoMolecule(
            title: product.title,
            category: product.category,
            price: product.price,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ProductDetailDescriptionMolecule(description: product.description),
        ),
        const SizedBox(height: 16),
        Center(
          child: AtomicAddToCartButton(onPressed: onAddToCart),
        ),
      ],
    );
  }
}
