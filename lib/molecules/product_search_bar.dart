import 'package:flutter/material.dart';
import '../atoms/search_bar.dart';

/// Molécula: Barra de búsqueda con padding.
class ProductSearchBarMolecule extends StatelessWidget {
  final TextEditingController searchController;
  final Function(String) onSearchChanged;

  const ProductSearchBarMolecule({
    super.key,
    required this.searchController,
    required this.onSearchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AtomicSearchBar(
        controller: searchController,
        hintText: "Buscar productos...",
        onChanged: onSearchChanged,
      ),
    );
  }
}
