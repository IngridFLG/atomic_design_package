import 'package:flutter/material.dart';
import '../organisms/profile_content.dart';

/// Template: Estructura mejorada de la pantalla de perfil.
class ProfileTemplate extends StatelessWidget {
  final String imageUrl;
  final String firstname;
  final String lastname;
  final String email;
  final String username;
  final String phone;
  final String city;
  final String street;
  final int number;
  final String zipcode;
  final VoidCallback onLogout;

  const ProfileTemplate({
    super.key,
    required this.imageUrl,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.username,
    required this.phone,
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
    required this.onLogout,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: const Text("Perfil de Usuario")),
      body: ProfileContentOrganism(
        imageUrl: imageUrl,
        firstname: firstname,
        lastname: lastname,
        email: email,
        username: username,
        phone: phone,
        city: city,
        street: street,
        number: number,
        zipcode: zipcode,
        onLogout: onLogout,
      ),
    );
  }
}
