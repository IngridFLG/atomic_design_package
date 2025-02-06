import 'package:flutter/material.dart';
import '../templates/register_template.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterTemplate(
        onRegister: () {
          print('Register button pressed');
        },
        emailController: TextEditingController(),
        usernameController: TextEditingController(),
        passwordController: TextEditingController(),
        firstnameController: TextEditingController(),
        lastnameController: TextEditingController(),
        cityController: TextEditingController(),
        streetController: TextEditingController(),
        numberController: TextEditingController(),
        zipcodeController: TextEditingController(),
        latitudeController: TextEditingController(),
        longitudeController: TextEditingController(),
        phoneController: TextEditingController(),
      ),
    );
  }
}
