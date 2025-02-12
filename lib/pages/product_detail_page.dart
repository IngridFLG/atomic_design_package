import 'package:flutter/material.dart';
import '../templates/product_detail_template.dart';
import '../models/product.dart';

/// Página: Recibe los datos desde el `Screen`, sin manejar lógica.
class ProductDetailPage extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;

  const ProductDetailPage({
    super.key,
    required this.product,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return ProductDetailTemplate(
      product: product,
      onAddToCart: onAddToCart,
    );
  }
}
