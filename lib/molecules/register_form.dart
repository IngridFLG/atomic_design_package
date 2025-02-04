import 'package:flutter/material.dart';

/// Formulario para registro de nuevos usuarios.
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
      children: [
        TextField(
          controller: usernameController,
          decoration: const InputDecoration(labelText: 'Usuario'),
        ),
        TextField(
          controller: emailController,
          decoration: const InputDecoration(labelText: 'Correo Electrónico'),
        ),
        TextField(
          controller: passwordController,
          decoration: const InputDecoration(labelText: 'Contraseña'),
          obscureText: true,
        ),
        const SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: onRegister,
          child: const Text('Registrarse'),
        ),
      ],
    );
  }
}
