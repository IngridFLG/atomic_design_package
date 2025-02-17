import 'package:flutter/material.dart';
import '../templates/product_detail_template.dart';

/// Página: Recibe los datos desde el `Screen`, sin manejar lógica.
class ProductDetailPage extends StatelessWidget {
  final String title;
  final String category;
  final String imageUrl;
  final double price;
  final String description;
  final VoidCallback onAddToCart;

  const ProductDetailPage({
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
    return ProductDetailTemplate(
      title: title,
      category: category,
      imageUrl: imageUrl,
      price: price,
      description: description,
      onAddToCart: onAddToCart,
    );
  }
}
