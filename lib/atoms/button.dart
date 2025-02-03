import 'package:flutter/material.dart';
import '../tokens/colors.dart';
import '../tokens/typography.dart';

/// Un átomo que representa un botón básico reutilizable.
///
/// Parámetros:
/// - [label]: Contenido del botón (puede ser texto, ícono, etc.).
/// - [onPressed]: Función que se ejecutará al presionar el botón.
/// - [color]: Color de fondo del botón (opcional, valor predeterminado: color primario).
/// - [textColor]: Color del texto dentro del botón (opcional, valor predeterminado: blanco).
class AtomicButton extends StatelessWidget {
  final Widget label;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;

  const AtomicButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? AppColors.primary,
        foregroundColor: textColor ?? Colors.white,
        textStyle: AppTypography.body,
      ),
      child: label,
    );
  }
}
