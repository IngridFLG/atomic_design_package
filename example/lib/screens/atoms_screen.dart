import 'package:flutter/material.dart';
import 'package:atomic_design_package/atomic_design_package.dart';

class AtomsScreen extends StatelessWidget {
  const AtomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Átomos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AtomicText(text: 'Texto Ejemplo', style: AppTypography.heading),
            const SizedBox(height: AppSpacing.medium),
            AtomicIcon(icon: Icons.star, color: AppColors.primary, size: 40),
            const SizedBox(height: AppSpacing.medium),
            AtomicButton(
              label: const Text('Botón Ejemplo'),
              onPressed: () => print('Botón presionado'),
            ),
          ],
        ),
      ),
    );
  }
}
