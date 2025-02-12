import 'package:flutter/material.dart';
import '../tokens/typography.dart';

/// Molécula: Muestra la descripción del producto.
class ProductDetailDescriptionMolecule extends StatelessWidget {
  final String description;

  const ProductDetailDescriptionMolecule({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(description, style: AppTypography.body);
  }
}
