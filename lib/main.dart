import 'package:flutter/material.dart';
import 'package:techcare/screens/iniciarSesion_screen.dart';
import 'package:techcare/screens/registrarse_screen.dart';

import 'bienvenida_screen.dart';
import 'splash_screen.dart';

void main() {
  runApp(const TechCare());
  debugPrint("EJECUTANDO APP");
}

class TechCare extends StatelessWidget {
  const TechCare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TechCare",
      routes: {
        "/bienvenida": (context) => const BienvenidaScreen(),
        "/iniciarSesion": (context) => const IniciarSesionSceen(),
        "/registrarse": (context) => const RegistrarseScreen(),
      },
      theme: ThemeData(primaryColor: Colors.red[400]),
      home: const SplashScreen(),
    );
  }
}
