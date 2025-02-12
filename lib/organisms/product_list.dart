import 'package:flutter/material.dart';
import '../molecules/product_search_bar.dart';
import '../molecules/product_card.dart';
import '../models/product.dart';

/// Organismo: Lista de productos con buscador.
class ProductListOrganism extends StatelessWidget {
  final List<Product> products; // Ahora recibe una lista de `Product`
  final TextEditingController searchController;
  final Function(Product) onProductTap;
  final Function(String) onSearchChanged;

  const ProductListOrganism({
    super.key,
    required this.products,
    required this.searchController,
    required this.onProductTap,
    required this.onSearchChanged,
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
              return ProductCardMolecule(
                product: products[index],
                onTap: () => onProductTap(products[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
