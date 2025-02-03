import 'package:flutter/material.dart';
import '../atoms/icon.dart';
import '../atoms/text.dart';
import '../atoms/button.dart';

/// Una molécula que representa un botón con un ícono y texto.
///
/// Parámetros:
/// - [label]: Texto del botón.
/// - [icon]: Ícono a mostrar junto al texto.
/// - [onPressed]: Acción a ejecutar al presionar el botón.
class ButtonWithIconAndText extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  const ButtonWithIconAndText({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AtomicButton(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AtomicIcon(
            icon: icon,
            color: Colors.white,
          ),
          const SizedBox(width: 8),
          AtomicText(
            text: label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      onPressed: onPressed,
    );
  }
}
