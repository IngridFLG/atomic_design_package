import 'package:flutter/material.dart';

/// Estilos generales que combinan tokens para elementos reutilizables.
class AppStyles {
  static const BoxDecoration cardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(12)),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        offset: Offset(0, 4),
        blurRadius: 8,
      ),
    ],
  );
}
