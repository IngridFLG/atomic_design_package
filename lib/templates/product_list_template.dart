import 'package:flutter/material.dart';
import '../organisms/product_card.dart';
import '../tokens/spacing.dart';

/// Una plantilla que muestra una lista de productos como tarjetas.
///
/// Parámetros:
/// - [products]: Lista de productos donde cada producto tiene:
///   - `title`: Título del producto.
///   - `description`: Descripción del producto.
///   - `icon`: Ícono del producto.
///   - `buttonLabel`: Texto del botón.
///   - `onButtonPressed`: Acción al presionar el botón.
class ProductListTemplate extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  const ProductListTemplate({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.medium,
        vertical: AppSpacing.small,
      ),
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(
            title: product['title'],
            description: product['description'],
            icon: product['icon'],
            buttonLabel: product['buttonLabel'],
            onButtonPressed: product['onButtonPressed'],
          );
        },
      ),
    );
  }
}
