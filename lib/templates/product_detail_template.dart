import 'package:flutter/material.dart';
import '../organisms/product_detail.dart';

/// Template: Estructura la pantalla de detalle del producto.
class ProductDetailTemplate extends StatelessWidget {
  final String title;
  final String category;
  final String imageUrl;
  final double price;
  final String description;
  final VoidCallback onAddToCart;

  const ProductDetailTemplate({
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
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        child: ProductDetailOrganism(
          title: title,
          category: category,
          imageUrl: imageUrl,
          price: price,
          description: description,
          onAddToCart: onAddToCart,
        ),
      ),
    );
  }
}
