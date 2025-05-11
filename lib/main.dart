import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techcare/objetivo_screen.dart';

import 'package:techcare/screens/iniciar_sesion_screen.dart';
import 'package:techcare/screens/primer_semestre.dart';
import 'package:techcare/screens/principal_screen.dart';
import 'package:techcare/screens/registrarse_screen.dart';
import 'bienvenida_screen.dart';
import 'splash_screen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  debugPrint("EJECUTANDO APP");
  runApp(const TechCare());
}

class TechCare extends StatelessWidget {
  const TechCare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TechCare",
      routes: {
        "/bienvenida": (context) => const BienvenidaScreen(),
        "/iniciarSesion": (context) => IniciarSesionScreen(),
        "/registrarse": (context) => RegistrarseScreen(),
        "/principal": (context) => const PrincipalScreen(),
        "/objetivo": (context) => ObjetivoScreen(),
        "/primer_semestre": (context) => PrimerSemestre(),
      },
      theme: ThemeData(primaryColor: Colors.red[400]),
      home: const SplashScreen(),
    );
  }
}
