import 'package:flutter/material.dart';

/// Átomo: Imagen de avatar del usuario con estilo mejorado.
class AtomicProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final double size;

  const AtomicProfileAvatar({
    super.key,
    required this.imageUrl,
    this.size = 90.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: CircleAvatar(
        radius: size / 2,
        backgroundImage: NetworkImage(imageUrl),
        onBackgroundImageError: (_, __) => const Icon(Icons.person, size: 50),
      ),
    );
  }
}
