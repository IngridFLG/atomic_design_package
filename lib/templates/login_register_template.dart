import 'package:flutter/material.dart';
import '../organisms/login_register_tabs.dart';
import '../organisms/header.dart';

/// Template para la página de Login y Registro.
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
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Header(
              title: 'Bienvenido',
              subtitle: 'Por favor inicia sesión o regístrate para continuar',
            ),
            const SizedBox(height: 24.0),
            Flexible(
              child: LoginRegisterTabs(
                onLogin: onLogin,
                onRegister: onRegister,
                loginUsernameController: loginUsernameController,
                loginPasswordController: loginPasswordController,
                registerUsernameController: registerUsernameController,
                registerEmailController: registerEmailController,
                registerPasswordController: registerPasswordController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
