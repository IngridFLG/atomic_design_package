import 'package:flutter/material.dart';
import '../organisms/register_organism.dart';

class RegisterTemplate extends StatelessWidget {
  final VoidCallback onRegister;
  final TextEditingController emailController;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController firstnameController;
  final TextEditingController lastnameController;
  final TextEditingController cityController;
  final TextEditingController streetController;
  final TextEditingController numberController;
  final TextEditingController zipcodeController;
  final TextEditingController latitudeController;
  final TextEditingController longitudeController;
  final TextEditingController phoneController;

  const RegisterTemplate({
    super.key,
    required this.onRegister,
    required this.emailController,
    required this.usernameController,
    required this.passwordController,
    required this.firstnameController,
    required this.lastnameController,
    required this.cityController,
    required this.streetController,
    required this.numberController,
    required this.zipcodeController,
    required this.latitudeController,
    required this.longitudeController,
    required this.phoneController,
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
            const Text(
              'Registrarse',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            RegisterOrganism(
              onRegister: onRegister,
              emailController: emailController,
              usernameController: usernameController,
              passwordController: passwordController,
              firstnameController: firstnameController,
              lastnameController: lastnameController,
              cityController: cityController,
              streetController: streetController,
              numberController: numberController,
              zipcodeController: zipcodeController,
              latitudeController: latitudeController,
              longitudeController: longitudeController,
              phoneController: phoneController,
            ),
          ],
        ),
      ),
    );
  }
}
