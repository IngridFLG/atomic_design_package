import 'package:flutter/material.dart';
import '../organisms/login_register_tabs.dart';
import '../organisms/header.dart';

/// Página para login y registro.
class LoginRegisterPage extends StatelessWidget {
  const LoginRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login & Registro')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Header(
              title: 'Bienvenido',
              subtitle: 'Por favor inicia sesión o regístrate para continuar',
            ),
            Expanded(
              child: LoginRegisterTabs(
                onLogin: () => print('Iniciar Sesión'),
                onRegister: () => print('Registrarse'),
                loginUsernameController: TextEditingController(),
                loginPasswordController: TextEditingController(),
                registerUsernameController: TextEditingController(),
                registerEmailController: TextEditingController(),
                registerPasswordController: TextEditingController(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
