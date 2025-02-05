import 'package:flutter/material.dart';
import '../templates/login_register_template.dart';

/// Página para login y registro con diseño mejorado.
class LoginRegisterPage extends StatelessWidget {
  const LoginRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
