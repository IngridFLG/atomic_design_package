import 'package:flutter/material.dart';
import '../templates/product_list_template.dart';
import '../tokens/colors.dart';

/// Una página genérica que muestra una lista de productos.
/// Los datos deben ser proporcionados desde el consumidor del paquete.
class ProductListPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  const ProductListPage({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lista de Productos',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      body: ProductListTemplate(products: products), 
    );
  }
}
