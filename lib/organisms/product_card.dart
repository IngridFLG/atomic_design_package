import 'package:flutter/material.dart';
import '../atoms/icon.dart';
import '../atoms/text.dart';
import '../molecules/button_with_icon_and_text.dart';
import '../tokens/colors.dart';
import '../tokens/spacing.dart';

/// Un organismo que representa una tarjeta de producto con un botón de acción.
///
/// Parámetros:
/// - [title]: Título del producto.
/// - [description]: Descripción del producto.
/// - [icon]: Ícono representativo del producto.
/// - [buttonLabel]: Texto del botón.
/// - [onButtonPressed]: Acción a ejecutar al presionar el botón.
class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final String buttonLabel;
  final VoidCallback onButtonPressed;

  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.buttonLabel,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.medium)),
      elevation: 4,
      margin: const EdgeInsets.symmetric(
        vertical: AppSpacing.small,
        horizontal: AppSpacing.medium,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AtomicIcon(icon: icon, size: 32, color: AppColors.primary),
                const SizedBox(width: AppSpacing.small),
                AtomicText(
                  text: title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppColors.text,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.small),
            AtomicText(
              text: description,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.text,
              ),
            ),
            const SizedBox(height: AppSpacing.medium),
            ButtonWithIconAndText(
              label: buttonLabel,
              icon: Icons.shopping_cart,
              onPressed: onButtonPressed,
            ),
          ],
        ),
      ),
    );
  }
}
