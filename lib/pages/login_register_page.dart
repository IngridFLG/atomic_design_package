import 'package:flutter/material.dart';
import '../templates/login_register_template.dart';

/// Página para login y registro.
class LoginRegisterPage extends StatelessWidget {
  const LoginRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login & Registro')),
      body: LoginRegisterTemplate(
        onLogin: () => print('Iniciar Sesión'),
        onRegister: () => print('Registrarse'),
        loginUsernameController: TextEditingController(),
        loginPasswordController: TextEditingController(),
        registerUsernameController: TextEditingController(),
        registerEmailController: TextEditingController(),
        registerPasswordController: TextEditingController(),
      ),
    );
  }
}
