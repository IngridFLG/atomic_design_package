import 'package:flutter/material.dart';
import '../organisms/login_register_tabs.dart';
import '../organisms/header.dart';

/// Template para la página de Login y Registro con diseño mejorado.
class LoginRegisterTemplate extends StatelessWidget {
  final VoidCallback onLogin;
  final VoidCallback onRegister;
  final TextEditingController loginUsernameController;
  final TextEditingController loginPasswordController;
  final TextEditingController registerUsernameController;
  final TextEditingController registerEmailController;
  final TextEditingController registerPasswordController;

  const LoginRegisterTemplate({
    super.key,
    required this.onLogin,
    required this.onRegister,
    required this.loginUsernameController,
    required this.loginPasswordController,
    required this.registerUsernameController,
    required this.registerEmailController,
    required this.registerPasswordController,
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
            // Header Organism
            const Header(
              title: 'Bienvenido',
              subtitle: 'Por favor inicia sesión o regístrate para continuar',
            ),
            const SizedBox(height: 24),
            // Logo
            Center(
              child: Image.asset(
                'assets/images/Logo.png',
                height: 120,
              ),
            ),
            const SizedBox(height: 32),
            // Login/Register Tabs
            LoginRegisterTabs(
              onLogin: onLogin,
              onRegister: onRegister,
              loginUsernameController: loginUsernameController,
              loginPasswordController: loginPasswordController,
              registerUsernameController: registerUsernameController,
              registerEmailController: registerEmailController,
              registerPasswordController: registerPasswordController,
            ),
          ],
        ),
      ),
    );
  }
}
