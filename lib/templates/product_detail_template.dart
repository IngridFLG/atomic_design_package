import 'package:flutter/material.dart';
import '../organisms/product_detail.dart';
import '../models/product.dart';

/// Template: Estructura la pantalla de detalle del producto.
class ProductDetailTemplate extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;

  const ProductDetailTemplate({
    super.key,
    required this.product,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: SingleChildScrollView(
        child: ProductDetailOrganism(
          product: product,
          onAddToCart: onAddToCart,
        ),
      ),
    );
  }
}
