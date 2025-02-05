import 'package:flutter/material.dart';
import '../molecules/login_form.dart';
import '../molecules/register_form.dart';

/// Un organismo que contiene pestañas para Login y Registro.
class LoginRegisterTabs extends StatefulWidget {
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
  State<LoginRegisterTabs> createState() => _LoginRegisterTabsState();
}

class _LoginRegisterTabsState extends State<LoginRegisterTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: 'Iniciar Sesións'),
              Tab(text: 'Registrarse'),
            ],
          ),
          const SizedBox(height: 50),
          Flexible(
            child: TabBarView(
              children: [
                LoginForm(
                  onLogin: widget.onLogin,
                  usernameController: widget.loginUsernameController,
                  passwordController: widget.loginPasswordController,
                ),
                RegisterForm(
                  onRegister: widget.onRegister,
                  usernameController: widget.registerUsernameController,
                  emailController: widget.registerEmailController,
                  passwordController: widget.registerPasswordController,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
