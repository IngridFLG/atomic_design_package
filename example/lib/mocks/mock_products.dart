import 'package:flutter/material.dart';

/// Datos ficticios para pruebas visuales.
final mockProducts = [
  {
    'title': 'Producto 1',
    'description': 'Descripción del producto 1',
    'icon': Icons.phone_android,
    'buttonLabel': 'Comprar',
    'onButtonPressed': () => print('Producto 1 comprado'),
  },
  {
    'title': 'Producto 2',
    'description': 'Descripción del producto 2',
    'icon': Icons.laptop,
    'buttonLabel': 'Comprar',
    'onButtonPressed': () => print('Producto 2 comprado'),
  },
  {
    'title': 'Producto 3',
    'description': 'Descripción del producto 3',
    'icon': Icons.headset,
    'buttonLabel': 'Comprar',
    'onButtonPressed': () => print('Producto 3 comprado'),
  },
];
