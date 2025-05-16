import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// IMPORTACIONES DE PANTALLAS
import 'package:techcare/objetivo_screen.dart';
import 'package:techcare/screens/iniciar_sesion_screen.dart';
import 'package:techcare/screens/pages/cuarto_semestre_screen.dart';
import 'package:techcare/screens/pages/primer_semestre_screen.dart';
import 'package:techcare/screens/pages/quinto_semestre_screen.dart';
import 'package:techcare/screens/pages/sexto_semestre_screen.dart';
import 'package:techcare/screens/principal_screen.dart';
import 'package:techcare/screens/registrarse_screen.dart';
import 'package:techcare/screens/pages/segundo_semestre_screen.dart';
import 'package:techcare/screens/pages/tercer_semestre_screen.dart';
import 'bienvenida_screen.dart';
import 'splash_screen.dart';

// IMPORTACIONES DE FIREBASE
import "package:firebase_core/firebase_core.dart";
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  // FIREBASE
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
        "/primer_semestre": (context) => PrimerSemestreScreen(),
        "/segundo_semestre": (context) => const SegundoSemestreScreen(),
        "/tercer_semestre": (context) => const TercerSemestreScreen(),
        "/cuarto_semestre": (context) => const CuartoSemestreScreen(),
        "/quinto_semestre": (context) => const QuintoSemestreScreen(),
        "/sexto_semestre": (context) => SextoSemestreScreen()
      },
      theme: ThemeData(primaryColor: Colors.red[400]),
      home: const SplashScreen(),
    );
  }
}
