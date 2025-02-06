import 'package:flutter/material.dart';
import '../molecules/register_form.dart';

class RegisterOrganism extends StatelessWidget {
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

  const RegisterOrganism({
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
    return RegisterForm(
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
    );
  }
}
