import 'package:flutter/material.dart';
import 'package:atomic_design_package/atomic_design_package.dart';
import '../mocks/mock_products.dart';

class TemplatesScreen extends StatelessWidget {
  const TemplatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Plantillas')),
      body: ProductListTemplate(products: mockProducts),
    );
  }
}
