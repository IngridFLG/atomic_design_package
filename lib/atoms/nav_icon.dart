import 'package:flutter/material.dart';
import '../tokens/colors.dart';

/// Átomo: Representa un ícono de navegación con estilo dinámico.
class AtomicNavIcon extends StatelessWidget {
  final IconData icon;
  final bool isSelected;

  const AtomicNavIcon({
    super.key,
    required this.icon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 28,
      color: isSelected ? AppColors.primary : Colors.black54,
    );
  }
}
