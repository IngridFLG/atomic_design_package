import 'package:flutter/material.dart';
import '../tokens/typography.dart';

/// Un átomo que representa texto de etiqueta reutilizable.
class AtomicLabelText extends StatelessWidget {
  final String text;

  const AtomicLabelText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTypography.caption,
    );
  }
}
