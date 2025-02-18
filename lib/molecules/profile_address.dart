import 'package:flutter/material.dart';
import '../atoms/profile_info_text.dart';

/// Molécula: Dirección del usuario.
class ProfileAddressMolecule extends StatelessWidget {
  final String city;
  final String street;
  final int number;
  final String zipcode;

  const ProfileAddressMolecule({
    super.key,
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Dirección", style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        AtomicProfileInfoText(label: "Ciudad", value: city),
        AtomicProfileInfoText(label: "Calle", value: "$street, $number"),
        AtomicProfileInfoText(label: "Código Postal", value: zipcode),
      ],
    );
  }
}
