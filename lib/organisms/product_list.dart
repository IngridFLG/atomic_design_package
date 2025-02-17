import 'package:flutter/material.dart';
import '../molecules/product_card.dart';
import '../molecules/product_search_bar.dart';

/// Organismo: Lista de productos con buscador.
class ProductListOrganism extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final TextEditingController searchController;
  final Function(String) onSearchChanged;
  final Function(Map<String, dynamic>) onProductTap;

  const ProductListOrganism({
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
        ProductSearchBarMolecule(
          searchController: searchController,
          onSearchChanged: onSearchChanged,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];

              return ProductCardMolecule(
                title: product['title'],
                imageUrl: product['image'],
                price: product['price'],
                onTap: () => onProductTap(product),
              );
            },
          ),
        ),
      ],
    );
  }
}
