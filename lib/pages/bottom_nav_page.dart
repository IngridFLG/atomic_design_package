import 'package:flutter/material.dart';
import '../templates/bottom_nav_template.dart';

/// Página de la barra de navegación (sin lógica).
class BottomNavPage extends StatelessWidget {
  final Widget child;
  final int selectedIndex;
  final Function(int) onItemSelected;

  const BottomNavPage({
    super.key,
    required this.child,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavTemplate(
      selectedIndex: selectedIndex,
      onItemSelected: onItemSelected,
      child: child,
    );
  }
}
