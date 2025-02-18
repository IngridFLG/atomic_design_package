import 'package:flutter/material.dart';
import 'package:atomic_design_package/pages/profile_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Datos de prueba (luego se reemplazarán por datos reales)
    final Map<String, dynamic> userData = {
      "imageUrl": "https://picsum.photos/200",
      "firstname": "John",
      "lastname": "Doe",
      "email": "John@gmail.com",
      "username": "johnd",
      "phone": "1-570-236-7033",
      "city": "Kilcoole",
      "street": "7835 New Road",
      "number": 3,
      "zipcode": "12926-3874",
    };

    return ProfilePage(
      imageUrl: userData["imageUrl"],
      firstname: userData["firstname"],
      lastname: userData["lastname"],
      email: userData["email"],
      username: userData["username"],
      phone: userData["phone"],
      city: userData["city"],
      street: userData["street"],
      number: userData["number"],
      zipcode: userData["zipcode"],
      onLogout: () {},
    );
  }
}
