import 'package:flutter/material.dart';
import '../tokens/typography.dart';
import '../tokens/colors.dart';

/// Un átomo que representa un campo de entrada reutilizable.
/// Parámetros:
/// - [labelText]: Texto que describe el campo.
/// - [controller]: Controlador del campo de texto.
/// - [isPassword]: Define si el campo oculta el texto.
class AtomicInputField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool isPassword;

  const AtomicInputField({
    super.key,
    required this.labelText,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: AppTypography.caption,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 2.0),
        ),
      ),
    );
  }
}
