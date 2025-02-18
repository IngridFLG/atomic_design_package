import 'package:flutter/material.dart';
import '../templates/profile_template.dart';

/// Página de perfil de usuario.
class ProfilePage extends StatelessWidget {
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

  const ProfilePage({
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
    return ProfileTemplate(
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
    );
  }
}
