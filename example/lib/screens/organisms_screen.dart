import 'package:flutter/material.dart';
import 'package:atomic_design_package/atomic_design_package.dart';

class OrganismsScreen extends StatelessWidget {
  const OrganismsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Organismos')),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.medium),
        child: ProductCard(
          title: 'Producto 1',
          description: 'Descripción de Producto 1',
          icon: Icons.phone_android,
          buttonLabel: 'Comprar',
          onButtonPressed: () => print('Producto comprado'),
        ),
      ),
    );
  }
}
