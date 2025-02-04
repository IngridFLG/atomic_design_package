import 'package:flutter/material.dart';
import '../atoms/input_field.dart';
import '../atoms/button.dart';

/// Un formulario de registro.
/// Parámetros:
/// - [onRegister]: Función que se ejecuta al enviar el formulario.
class RegisterForm extends StatelessWidget {
  final VoidCallback onRegister;
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const RegisterForm({
    super.key,
    required this.onRegister,
    required this.usernameController,
    required this.emailController,
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
          labelText: 'Correo Electrónico',
          controller: emailController,
        ),
        const SizedBox(height: 16),
        AtomicInputField(
          labelText: 'Contraseña',
          controller: passwordController,
          isPassword: true,
        ),
        const SizedBox(height: 24),
        AtomicButton(
          label: const Text('Registrarse'),
          onPressed: onRegister,
        ),
      ],
    );
  }
}
