import 'package:flutter/material.dart';

/// Átomo: Texto de la categoría.
class AtomicCategoryText extends StatelessWidget {
  final String text;

  const AtomicCategoryText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      overflow: TextOverflow.ellipsis,
    );
  }
}
