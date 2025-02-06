import 'package:flutter/material.dart';
import '../templates/login_template.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final VoidCallback onLogin;
  final VoidCallback onRegisterTap;

  const LoginPage({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.onLogin,
    required this.onRegisterTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginTemplate(
        usernameController: usernameController,
        passwordController: passwordController,
        onLogin: onLogin,
        onRegisterTap: onRegisterTap,
      ),
    );
  }
}
