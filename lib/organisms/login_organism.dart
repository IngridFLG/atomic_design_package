import 'package:flutter/material.dart';
import '../molecules/login_form.dart';

class LoginOrganism extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final VoidCallback onLogin;
  final VoidCallback onRegisterTap;

  const LoginOrganism({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.onLogin,
    required this.onRegisterTap,
  });

  @override
  Widget build(BuildContext context) {
    return LoginForm(
      usernameController: usernameController,
      passwordController: passwordController,
      onLogin: onLogin,
      onRegisterTap: onRegisterTap,
    );
  }
}
