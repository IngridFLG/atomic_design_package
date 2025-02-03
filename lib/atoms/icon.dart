import 'package:flutter/material.dart';
import '../tokens/colors.dart';

/// Un átomo que representa un ícono básico reutilizable.
///
/// Parámetros:
/// - [icon]: El ícono a mostrar.
/// - [size]: Tamaño del ícono (opcional, valor predeterminado: 24.0).
/// - [color]: Color del ícono (opcional, utiliza el token de color `AppColors.text` como valor predeterminado).
class AtomicIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color? color;

  const AtomicIcon({
    super.key,
    required this.icon,
    this.size = 24.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color ?? AppColors.text, 
    );
  }
}
