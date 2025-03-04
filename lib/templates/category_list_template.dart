import 'package:flutter/material.dart';
import '../organisms/category_list.dart';

/// Template: Pantalla del listado de categorías.
class CategoryListTemplate extends StatelessWidget {
  final List<String> categories;
  final Function(String) onCategoryTap;

  const CategoryListTemplate({
    super.key,
    required this.categories,
    required this.onCategoryTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CategoryListOrganism(
          categories: categories,
          onCategoryTap: onCategoryTap,
        ),
      ),
    );
  }
}
