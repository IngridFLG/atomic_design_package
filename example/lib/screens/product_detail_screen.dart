import 'package:flutter/material.dart';
import 'package:atomic_design_package/pages/product_detail_page.dart';
import 'package:atomic_design_package/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  void _addToCart() {
    // Aquí manejarías la lógica de agregar al carrito
    print('Producto agregado al carrito: ${product.title}');
  }

  @override
  Widget build(BuildContext context) {
    return ProductDetailPage(
      product: product,
      onAddToCart: _addToCart,
    );
  }
}
