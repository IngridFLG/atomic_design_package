import 'package:example/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:atomic_design_package/pages/bottom_nav_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atomic Design Example',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const NavigationHandler(),
    );
  }
}

/// Maneja la navegación entre las páginas de la barra de navegación.
class NavigationHandler extends StatefulWidget {
  const NavigationHandler({super.key});

  @override
  NavigationHandlerState createState() => NavigationHandlerState();
}

class NavigationHandlerState extends State<NavigationHandler> {
  int _selectedIndex = 0;

  /// Lista de páginas a mostrar en la navegación inferior.
  final List<Widget> _pages = [
    const ProductListScreen(),
    const ProductListScreen(),
    const ProductListScreen(),
  ];

  /// Actualiza la página seleccionada.
  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavPage(
      selectedIndex: _selectedIndex,
      onItemSelected: _onItemSelected,
      child: _pages[_selectedIndex],
    );
  }
}
