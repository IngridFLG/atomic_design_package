import 'package:flutter/material.dart';
import '../organisms/product_list.dart';

/// Template para la lista de productos con un buscador.
class ProductListTemplate extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final TextEditingController searchController;
  final Function(String) onSearchChanged;
  final Function(Map<String, dynamic>) onProductTap;

  const ProductListTemplate({
    super.key,
    required this.products,
    required this.searchController,
    required this.onSearchChanged,
    required this.onProductTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ProductListOrganism(
            products: products,
            searchController: searchController,
            onSearchChanged: onSearchChanged,
            onProductTap: onProductTap,
          ),
        ),
      ],
    );
  }
}
