import 'package:flutter/material.dart';
import '../molecules/nav_item.dart';

/// Organismo: Barra de navegación inferior con 3 elementos.
class BottomNavBarOrganism extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const BottomNavBarOrganism({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavItemMolecule(
            icon: Icons.home,
            label: "Inicio",
            isSelected: selectedIndex == 0,
            onTap: () => onItemSelected(0),
          ),
          NavItemMolecule(
            icon: Icons.category,
            label: "Categorías",
            isSelected: selectedIndex == 1,
            onTap: () => onItemSelected(1),
          ),
          NavItemMolecule(
            icon: Icons.person,
            label: "Perfil",
            isSelected: selectedIndex == 2,
            onTap: () => onItemSelected(2),
          ),
          NavItemMolecule(
            icon: Icons.shopping_cart,
            label: "Carrito",
            isSelected: selectedIndex == 3,
            onTap: () => onItemSelected(3),
          ),
        ],
      ),
    );
  }
}
