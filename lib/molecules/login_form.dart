import 'package:flutter/material.dart';

/// Formulario para iniciar sesión.
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
      children: [
        TextField(
          controller: usernameController,
          decoration: const InputDecoration(labelText: 'Usuario'),
        ),
        TextField(
          controller: passwordController,
          decoration: const InputDecoration(labelText: 'Contraseña'),
          obscureText: true,
        ),
        const SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: onLogin,
          child: const Text('Iniciar Sesión'),
        ),
      ],
    );
  }
}
