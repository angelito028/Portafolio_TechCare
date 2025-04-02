import 'package:flutter/material.dart';

class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/logo.png", width: 270.0),

              const SizedBox(height: 30),

              const Text(
                "¡Bienvenido a TechCare!\nPor favor inicia sesión o si eres nuevo usuario crea tu cuenta.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0),
              ),

              const SizedBox(height: 60),

              SizedBox(
                width: 270,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/iniciarSesion");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF1E8A6),
                    foregroundColor: Color(0xFF000000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 2.0,
                  ),
                  child: const Text(
                    "Iniciar Sesión",
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
              ),

              const SizedBox(height: 25.0),

              SizedBox(
                width: 270,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/registrarse");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF1E8A6),
                    foregroundColor: Color(0xFF000000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 2.0,
                  ),
                  child: const Text(
                    "Registrarse",
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
