import 'package:flutter/material.dart';
import 'screens/atoms_screen.dart';
import 'screens/molecules_screen.dart';
import 'screens/organisms_screen.dart';
import 'screens/templates_screen.dart';
import 'screens/pages_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atomic Design Example',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sections = [
      {
        'title': 'Átomos',
        'icon': Icons.widgets_outlined,
        'screen': const AtomsScreen(),
      },
      {
        'title': 'Moléculas',
        'icon': Icons.scatter_plot_outlined,
        'screen': const MoleculesScreen(),
      },
      {
        'title': 'Organismos',
        'icon': Icons.grain_outlined,
        'screen': const OrganismsScreen(),
      },
      {
        'title': 'Plantillas',
        'icon': Icons.dashboard_outlined,
        'screen': const TemplatesScreen(),
      },
      {
        'title': 'Páginas',
        'icon': Icons.pages_outlined,
        'screen': const PagesScreen(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo Atomic Design'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 3 / 2,
          ),
          itemCount: sections.length,
          itemBuilder: (context, index) {
            final section = sections[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => section['screen'] as Widget),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      section['icon'] as IconData,
                      size: 40,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      section['title'] as String,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
