import 'package:flutter/material.dart';
import '../organisms/login_organism.dart';

class LoginTemplate extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final VoidCallback onLogin;
  final VoidCallback onRegisterTap;

  const LoginTemplate({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.onLogin,
    required this.onRegisterTap,
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
              usernameController: usernameController,
              passwordController: passwordController,
              onLogin: onLogin,
              onRegisterTap: onRegisterTap,
            ),
          ],
        ),
      ),
    );
  }
}
