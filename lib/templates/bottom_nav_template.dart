import 'package:flutter/material.dart';
import '../organisms/bottom_nav_bar.dart';

/// Template: Barra de navegación sin lógica, solo estructura.
class BottomNavTemplate extends StatelessWidget {
  final Widget child;
  final int selectedIndex;
  final Function(int) onItemSelected;

  const BottomNavTemplate({
    super.key,
    required this.child,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavBarOrganism(
        selectedIndex: selectedIndex,
        onItemSelected: onItemSelected,
      ),
    );
  }
}
