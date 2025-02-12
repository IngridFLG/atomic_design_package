import 'package:flutter/material.dart';

/// Átomo: Imagen de producto.
class AtomicProductImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  const AtomicProductImage({
    super.key,
    required this.imageUrl,
    this.width = 50,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: width,
      height: height,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => const Icon(Icons.image_not_supported),
    );
  }
}
