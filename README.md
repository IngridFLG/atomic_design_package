
# Atomic Design Package

Un paquete de Flutter basado en la metodología **Atomic Design**, que organiza los componentes en átomos, moléculas, organismos, plantillas y páginas. Este paquete incluye un ejemplo tipo showcase para visualizar y probar el sistema de diseño.

---

## 🚀 Funcionalidades

- **Tokens**: Definición de colores, tipografía y espaciados reutilizables en todo el sistema de diseño.
- **Foundation**: Puente entre los tokens y los componentes, asegurando un diseño consistente.
- **Átomos**: Componentes básicos como botones, íconos y textos.
- **Moléculas**: Combinaciones simples de átomos, como botones con texto e íconos.
- **Organismos**: Estructuras complejas que agrupan átomos y moléculas.
- **Plantillas**: Diseño de estructura general de una página.
- **Páginas**: Instancias finales que combinan plantillas con datos específicos.

---

## 🛠️ Instalación

### 1. Agregar la dependencia

En tu archivo `pubspec.yaml`, añade la referencia a este paquete (ajusta el URL según tu repositorio):

```yaml
dependencies:
  atomic_design_package:
    git:
      url: https://github.com/IngridFLG/atomic_design_package.git
```

Luego, ejecuta:

```bash
flutter pub get
```

---

## 📦 Uso del Paquete

### 1. Importar el paquete

Importa los componentes necesarios del paquete en tu archivo de Flutter:

```dart
import 'package:atomic_design_package/atomic_design_package.dart';
```

### 2. Usar los componentes

Ejemplo básico de cómo usar los componentes del sistema de diseño:

```dart
import 'package:flutter/material.dart';
import 'package:atomic_design_package/atomic_design_package.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: Scaffold(
        appBar: AppBar(title: const Text('Atomic Design Example')),
        body: ProductListPage(
          products: [
            {
              'title': 'Producto 1',
              'description': 'Descripción del producto 1',
              'icon': Icons.phone_android,
              'buttonLabel': 'Comprar',
              'onButtonPressed': () => print('Producto 1 comprado'),
            },
          ],
        ),
      ),
    );
  }
}
```

---

## 🖥️ Ejecutar el Ejemplo

Este paquete incluye un proyecto de ejemplo para probar y visualizar los componentes del sistema de diseño.

### 1. Clonar el repositorio

```bash
git clone https://github.com/IngridFLG/atomic_design_package.git
cd atomic_design_package/example
```

### 2. Instalar las dependencias

Ejecuta el siguiente comando en la carpeta del ejemplo:

```bash
flutter pub get
```

### 3. Ejecutar el ejemplo

Inicia la aplicación de ejemplo:

```bash
flutter run
```

---

## 📂 Estructura del Proyecto

El proyecto sigue la estructura de Atomic Design:

```
lib/
├── atoms/
│   ├── button.dart
│   ├── icon.dart
│   └── text.dart
├── foundation/
│   ├── styles.dart
│   └── theme.dart
├── molecules/
│   └── button_with_icon_and_text.dart
├── organisms/
│   └── product_card.dart
├── pages/
│   └── product_list_page.dart
├── templates/
│   └── product_list_template.dart
├── tokens/
│   ├── colors.dart
│   ├── spacing.dart
│   └── typography.dart
└── atomic_design_package.dart
```
