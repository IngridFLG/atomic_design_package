import 'package:flutter/material.dart';
import '../atoms/input_field.dart';
import '../atoms/button.dart';

class RegisterForm extends StatelessWidget {
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
  final VoidCallback onRegister;

  const RegisterForm({
    super.key,
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
    required this.onRegister,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AtomicInputField(
          labelText: 'Email',
          controller: emailController,
        ),
        const SizedBox(height: 16),
        AtomicInputField(
          labelText: 'Username',
          controller: usernameController,
        ),
        const SizedBox(height: 16),
        AtomicInputField(
          labelText: 'Password',
          controller: passwordController,
          isPassword: true,
        ),
        const SizedBox(height: 16),
        AtomicInputField(
          labelText: 'First Name',
          controller: firstnameController,
        ),
        const SizedBox(height: 16),
        AtomicInputField(
          labelText: 'Last Name',
          controller: lastnameController,
        ),
        const SizedBox(height: 16),
        AtomicInputField(
          labelText: 'City',
          controller: cityController,
        ),
        const SizedBox(height: 16),
        AtomicInputField(
          labelText: 'Street',
          controller: streetController,
        ),
        const SizedBox(height: 16),
        AtomicInputField(
          labelText: 'Number',
          controller: numberController,
        ),
        const SizedBox(height: 16),
        AtomicInputField(
          labelText: 'Zipcode',
          controller: zipcodeController,
        ),
        const SizedBox(height: 16),
        AtomicInputField(
          labelText: 'Latitude',
          controller: latitudeController,
        ),
        const SizedBox(height: 16),
        AtomicInputField(
          labelText: 'Longitude',
          controller: longitudeController,
        ),
        const SizedBox(height: 16),
        AtomicInputField(
          labelText: 'Phone',
          controller: phoneController,
        ),
        const SizedBox(height: 32),
        AtomicButton(
          label: const Text('Aceptar'),
          onPressed: onRegister,
        ),
      ],
    );
  }
}
