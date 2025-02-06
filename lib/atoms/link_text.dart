import 'package:flutter/material.dart';

/// Texto de enlace para acciones como "Forgot password?" o "Sign Up".
class AtomicLinkText extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const AtomicLinkText({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
