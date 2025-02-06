import 'package:flutter/material.dart';
import '../templates/login_template.dart';

class LoginPage extends StatelessWidget {
  final VoidCallback onRegisterTap; // Callback para navegación

  const LoginPage({
    super.key,
    required this.onRegisterTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginTemplate(
        onLogin: () {
          print('Login button pressed');
        },
        onRegisterTap: onRegisterTap,
        usernameController: TextEditingController(),
        passwordController: TextEditingController(),
      ),
    );
  }
}
