import 'package:flutter/material.dart';
import '../molecules/login_form.dart';

class LoginOrganism extends StatelessWidget {
  final VoidCallback onLogin;
  final VoidCallback onRegisterTap;
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  const LoginOrganism({
    super.key,
    required this.onLogin,
    required this.onRegisterTap,
    required this.usernameController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LoginForm(
          onLogin: onLogin,
          usernameController: usernameController,
          passwordController: passwordController,
          onRegisterTap: onRegisterTap,
        ),
      ],
    );
  }
}
