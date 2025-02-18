import 'package:flutter/material.dart';
import '../atoms/profile_avatar.dart';

/// Molécula: Encabezado del perfil con imagen, nombre y correo.
class ProfileHeaderMolecule extends StatelessWidget {
  final String imageUrl;
  final String firstname;
  final String lastname;
  final String email;

  const ProfileHeaderMolecule({
    super.key,
    required this.imageUrl,
    required this.firstname,
    required this.lastname,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AtomicProfileAvatar(imageUrl: imageUrl),
        const SizedBox(height: 10),
        Text(
          "$firstname $lastname",
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          email,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
