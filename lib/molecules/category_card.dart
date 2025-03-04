import 'package:flutter/material.dart';
import '../atoms/category_text.dart';
import '../atoms/category_icon.dart';

/// Molécula: Tarjeta de categoría con nombre e ícono.
class CategoryCardMolecule extends StatelessWidget {
  final String categoryName;
  final VoidCallback onTap;

  const CategoryCardMolecule({
    super.key,
    required this.categoryName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              const AtomicCategoryIcon(),
              const SizedBox(width: 16),
              Expanded(child: AtomicCategoryText(text: categoryName)),
            ],
          ),
        ),
      ),
    );
  }
}
