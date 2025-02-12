import 'package:flutter/material.dart';

/// Átomo: Imagen del producto en detalle.
class AtomicProductDetailImage extends StatelessWidget {
  final String imageUrl;

  const AtomicProductDetailImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: 250,
      width: double.infinity,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => const Icon(Icons.image_not_supported, size: 100),
    );
  }
}
