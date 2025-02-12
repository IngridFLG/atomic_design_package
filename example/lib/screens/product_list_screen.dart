import 'package:flutter/material.dart';
import 'package:atomic_design_package/pages/product_list_page.dart';
import 'package:atomic_design_package/models/product.dart';

import 'product_detail_screen.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  ProductListScreenState createState() => ProductListScreenState();
}

class ProductListScreenState extends State<ProductListScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Product> _filteredProducts = [];

  final List<Product> sampleProducts = [
    Product(
      id: 1,
      title: "Smartphone",
      price: 699.99,
      category: "Electronics",
      image: "https://picsum.photos/200/300",
      description: "Un potente smartphone con gran rendimiento.",
    ),
    Product(
      id: 2,
      title: "Laptop",
      price: 1199.99,
      category: "Electronics",
      image: "https://picsum.photos/200/300",
      description: "Laptop de alta gama para profesionales.",
    ),
    Product(
      id: 3,
      title: "Auriculares Bluetooth",
      price: 49.99,
      category: "Accessories",
      image: "https://picsum.photos/200/300",
      description: "Auriculares inalámbricos con cancelación de ruido.",
    ),
    Product(
      id: 4,
      title: "Smartwatch",
      price: 199.99,
      category: "Accessories",
      image: "https://picsum.photos/200/300",
      description: "Reloj inteligente con múltiples funcionalidades.",
    ),
    Product(
      id: 5,
      title: "Smartwatch",
      price: 199.99,
      category: "Accessories",
      image: "https://picsum.photos/200/300",
      description: "Reloj inteligente con múltiples funcionalidades.",
    ),
    Product(
      id: 6,
      title: "Smartwatch",
      price: 199.99,
      category: "Accessories",
      image: "https://picsum.photos/200/300",
      description: "Reloj inteligente con múltiples funcionalidades.",
    ),
    Product(
      id: 7,
      title: "Smartwatch",
      price: 199.99,
      category: "Accessories",
      image: "https://picsum.photos/200/300",
      description: "Reloj inteligente con múltiples funcionalidades.",
    ),
    Product(
      id: 8,
      title: "Smartwatch",
      price: 199.99,
      category: "Accessories",
      image: "https://picsum.photos/200/300",
      description: "Reloj inteligente con múltiples funcionalidades.",
    ),
    Product(
      id: 9,
      title: "Smartwatch",
      price: 199.99,
      category: "Accessories",
      image: "https://picsum.photos/200/300",
      description: "Reloj inteligente con múltiples funcionalidades.",
    ),
    Product(
      id: 10,
      title: "Smartwatch",
      price: 199.99,
      category: "Accessories",
      image: "https://picsum.photos/200/300",
      description: "Reloj inteligente con múltiples funcionalidades.",
    ),
    Product(
      id: 11,
      title: "Smartwatch",
      price: 199.99,
      category: "Accessories",
      image: "https://picsum.photos/200/300",
      description: "Reloj inteligente con múltiples funcionalidades.",
    ),
    Product(
      id: 12,
      title: "Smartwatch",
      price: 199.99,
      category: "Accessories",
      image: "https://picsum.photos/200/300",
      description: "Reloj inteligente con múltiples funcionalidades.",
    ),
  ];

  @override
  void initState() {
    super.initState();
    _filteredProducts = sampleProducts;
  }

  void _onSearchChanged(String query) {
    setState(() {
      _filteredProducts = sampleProducts
          .where((product) =>
              product.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void _onProductTap(Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailScreen(product: product),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductListPage(
        products: _filteredProducts,
        searchController: _searchController,
        onSearchChanged: _onSearchChanged,
        onProductTap: _onProductTap,
      ),
    );
  }
}
