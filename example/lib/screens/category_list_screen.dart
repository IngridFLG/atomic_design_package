import 'package:flutter/material.dart';
import 'package:atomic_design_package/pages/category_list_page.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Categorías de prueba (simulando las que devuelve la API)
    final List<String> categories = [
      "Electronics",
      "Jewelery",
      "Men's Clothing",
      "Women's Clothing"
    ];

    void _onCategoryTap(String category) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Seleccionaste: $category")),
      );
    }

    return CategoryListPage(
      categories: categories,
      onCategoryTap: _onCategoryTap,
    );
  }
}
