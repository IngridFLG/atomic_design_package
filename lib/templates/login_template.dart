import 'package:flutter/material.dart';
import '../organisms/login_organism.dart';

class LoginTemplate extends StatelessWidget {
  final VoidCallback onLogin;
  final VoidCallback onRegisterTap;
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  const LoginTemplate({
    super.key,
    required this.onLogin,
    required this.onRegisterTap,
    required this.usernameController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Center(
              child: Image.asset(
                'packages/atomic_design_package/assets/images/logo.png',
                height: 250,
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            LoginOrganism(
              onLogin: onLogin,
              onRegisterTap: onRegisterTap,
              usernameController: usernameController,
              passwordController: passwordController,
            ),
          ],
        ),
      ),
    );
  }
}
