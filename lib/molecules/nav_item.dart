import 'package:flutter/material.dart';
import '../atoms/nav_icon.dart';
import '../tokens/typography.dart';

/// Molécula: Un solo elemento dentro de la barra de navegación.
class NavItemMolecule extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const NavItemMolecule({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AtomicNavIcon(icon: icon, isSelected: isSelected),
          const SizedBox(height: 4),
          Text(
            label,
            style: AppTypography.caption.copyWith(
              color: isSelected ? Colors.blue : Colors.black54,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
