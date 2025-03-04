import 'package:flutter/material.dart';
import '../molecules/category_card.dart';

/// Organismo: Lista de categorías con desplazamiento.
class CategoryListOrganism extends StatelessWidget {
  final List<String> categories;
  final Function(String) onCategoryTap;

  const CategoryListOrganism({
    super.key,
    required this.categories,
    required this.onCategoryTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryCardMolecule(
          categoryName: categories[index],
          onTap: () => onCategoryTap(categories[index]),
        );
      },
    );
  }
}
