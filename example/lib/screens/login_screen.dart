import 'package:flutter/material.dart';
import 'package:atomic_design_package/atomic_design_package.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(
        onRegisterTap: () {
          Navigator.pushNamed(context, '/register');
        },
      ),
    );
  }
}
