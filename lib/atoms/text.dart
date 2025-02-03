import 'package:flutter/material.dart';
import '../tokens/typography.dart';

/// Un átomo que representa texto con estilo reutilizable.
///
/// Parámetros:
/// - [text]: El texto a mostrar.
/// - [style]: Estilo del texto (opcional, usa estilos predeterminados de `AppTypography`).
class AtomicText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const AtomicText({
    super.key,
    required this.text,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? AppTypography.body,
    );
  }
}
