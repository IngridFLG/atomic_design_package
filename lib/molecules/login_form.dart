import 'package:flutter/material.dart';
import '../atoms/input_field.dart';
import '../atoms/button.dart';

/// Un formulario de inicio de sesión.
/// Parámetros:
/// - [onLogin]: Función que se ejecuta al enviar el formulario.
class LoginForm extends StatelessWidget {
  final VoidCallback onLogin;
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  const LoginForm({
    super.key,
    required this.onLogin,
    required this.usernameController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AtomicInputField(
          labelText: 'Usuario',
          controller: usernameController,
        ),
        const SizedBox(height: 16),
        AtomicInputField(
          labelText: 'Contraseña',
          controller: passwordController,
          isPassword: true,
        ),
        const SizedBox(height: 24),
        AtomicButton(
          label: const Text('Iniciar Sesión'),
          onPressed: onLogin,
        ),
      ],
    );
  }
}
