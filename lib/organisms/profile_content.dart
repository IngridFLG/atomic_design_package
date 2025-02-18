import 'package:flutter/material.dart';
import '../atoms/profile_info_text.dart';
import '../atoms/logout_button.dart';
import '../molecules/profile_header.dart';
import '../molecules/profile_address.dart';

/// Organismo: Contenido del perfil con diseño mejorado.
class ProfileContentOrganism extends StatelessWidget {
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

  const ProfileContentOrganism({
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
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileHeaderMolecule(
            imageUrl: imageUrl,
            firstname: firstname,
            lastname: lastname,
            email: email,
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AtomicProfileInfoText(label: "Usuario", value: username),
                AtomicProfileInfoText(label: "Teléfono", value: phone),
                const SizedBox(height: 16),
                ProfileAddressMolecule(
                  city: city,
                  street: street,
                  number: number,
                  zipcode: zipcode,
                ),
              ],
            ),
          ),
          AtomicLogoutButton(onPressed: onLogout),
        ],
      ),
    );
  }
}
