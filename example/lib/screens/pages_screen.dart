import 'package:flutter/material.dart';
import 'package:atomic_design_package/atomic_design_package.dart';
import '../mocks/mock_products.dart';

class PagesScreen extends StatelessWidget {
  const PagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ProductListPage(
      products: mockProducts,
    );
  }
}
