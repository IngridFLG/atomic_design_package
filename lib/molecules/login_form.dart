import 'package:flutter/material.dart';
import '../atoms/input_field.dart';
import '../atoms/button.dart';
import '../atoms/link_text.dart';

class LoginForm extends StatelessWidget {
  final VoidCallback onLogin;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final VoidCallback onRegisterTap;

  const LoginForm({
    super.key,
    required this.onLogin,
    required this.usernameController,
    required this.passwordController,
    required this.onRegisterTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AtomicInputField(
          labelText: 'Username',
          controller: usernameController,
        ),
        const SizedBox(height: 16),
        AtomicInputField(
          labelText: 'Password',
          controller: passwordController,
          isPassword: true,
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.center,
          child: AtomicLinkText(
            text: 'Registrarse',
            onTap: onRegisterTap,
          ),
        ),
        const SizedBox(height: 32),
        AtomicButton(
          label: const Text('Iniciar sesión'),
          onPressed: onLogin,
        ),
      ],
    );
  }
}
