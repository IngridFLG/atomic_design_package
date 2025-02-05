import 'package:flutter/material.dart';
import '../molecules/login_form.dart';
import '../molecules/register_form.dart';

/// Organismo que contiene las pestañas para Login y Registro.
class LoginRegisterTabs extends StatelessWidget {
  final VoidCallback onLogin;
  final VoidCallback onRegister;
  final TextEditingController loginUsernameController;
  final TextEditingController loginPasswordController;
  final TextEditingController registerUsernameController;
  final TextEditingController registerEmailController;
  final TextEditingController registerPasswordController;

  const LoginRegisterTabs({
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
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(text: 'Iniciar Sesión'),
              Tab(text: 'Registrarse'),
            ],
          ),
          const SizedBox(height: 24),
          Flexible(
            child: TabBarView(
              children: [
                LoginForm(
                  onLogin: onLogin,
                  usernameController: loginUsernameController,
                  passwordController: loginPasswordController,
                ),
                RegisterForm(
                  onRegister: onRegister,
                  usernameController: registerUsernameController,
                  emailController: registerEmailController,
                  passwordController: registerPasswordController,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
