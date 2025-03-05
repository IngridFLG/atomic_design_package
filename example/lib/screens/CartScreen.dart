import 'package:flutter/material.dart';
import 'package:atomic_design_package/pages/cart_page.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  CartScreenState createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  // 🔹 Lista de productos en el carrito (simulación)
  List<Map<String, dynamic>> cartItems = [
    {"productId": 1, "title": "Laptop", "price": 1200.00, "quantity": 1, "image": "https://picsum.photos/200"},
    {"productId": 2, "title": "Smartphone", "price": 800.00, "quantity": 2, "image": "https://picsum.photos/200"},
    {"productId": 3, "title": "Auriculares", "price": 150.00, "quantity": 1, "image": "https://picsum.photos/200"},
  ];

  // 🔹 Calcula el total
  double get total {
    return cartItems.fold(0, (sum, item) => sum + (item["price"] * item["quantity"]));
  }

  // 🔹 Aumentar cantidad
  void _increaseQuantity(int index) {
    setState(() {
      cartItems[index]["quantity"]++;
    });
  }

  // 🔹 Disminuir cantidad (mínimo 1)
  void _decreaseQuantity(int index) {
    setState(() {
      if (cartItems[index]["quantity"] > 1) {
        cartItems[index]["quantity"]--;
      }
    });
  }

  // 🔹 Eliminar producto del carrito
  void _deleteItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  // 🔹 Simulación de pago
  void _onPay() {
    print("✅ Pago realizado con éxito. Total: \$${total.toStringAsFixed(2)}");
  }

  @override
  Widget build(BuildContext context) {
    return CartPage(
      cartItems: cartItems,
      total: total,
      onIncrease: _increaseQuantity,
      onDecrease: _decreaseQuantity,
      onDelete: _deleteItem,
      onPay: _onPay,
    );
  }
}
