import 'package:flutter/material.dart';
import '../templates/category_list_template.dart';

/// Página de Categorías (sin lógica, solo diseño).
class CategoryListPage extends StatelessWidget {
  final List<String> categories;
  final Function(String) onCategoryTap;

  const CategoryListPage({
    super.key,
    required this.categories,
    required this.onCategoryTap,
  });

  @override
  Widget build(BuildContext context) {
    return CategoryListTemplate(
      categories: categories,
      onCategoryTap: onCategoryTap,
    );
  }
}
