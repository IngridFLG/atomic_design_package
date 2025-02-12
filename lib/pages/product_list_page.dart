import 'package:flutter/material.dart';
import '../templates/product_list_template.dart';
import '../models/product.dart';

/// Página que contiene la estructura de la lista de productos.
class ProductListPage extends StatelessWidget {
  final List<Product> products;
  final TextEditingController searchController;
  final Function(Product) onProductTap;
  final Function(String) onSearchChanged;

  const ProductListPage({
    super.key,
    required this.products,
    required this.searchController,
    required this.onProductTap,
    required this.onSearchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Productos')),
      body: ProductListTemplate(
        products: products,
        searchController: searchController,
        onSearchChanged: onSearchChanged,
        onProductTap: onProductTap,
      ),
    );
  }
}
