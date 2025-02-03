import 'package:flutter/material.dart';
import 'package:atomic_design_package/atomic_design_package.dart';

class MoleculesScreen extends StatelessWidget {
  const MoleculesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Moléculas')),
      body: Center(
        child: ButtonWithIconAndText(
          label: 'Comprar',
          icon: Icons.shopping_cart,
          onPressed: () => print('Comprar presionado'),
        ),
      ),
    );
  }
}
