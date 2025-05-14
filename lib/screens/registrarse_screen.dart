import 'package:flutter/material.dart';

class RegistrarseScreen extends StatelessWidget {
  RegistrarseScreen({super.key});

  final TextEditingController _correoControlador = TextEditingController();
  final TextEditingController _contraseniaControlador = TextEditingController();
  final TextEditingController _nombreUsuarioControlador =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    width: 150.0,
                    height: 150.0,
                    child: Image.asset("assets/logo.png"),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 252, 184, 184),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 25.0),
                    child: Column(
                      children: [
                        const Text(
                          "Crea tu Cuenta",
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        TextField(
                          controller: _nombreUsuarioControlador,
                          style: const TextStyle(fontSize: 20.0),
                          decoration: InputDecoration(
                            labelText: "Nombre de Usuario",
                            labelStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        TextField(
                          controller: _correoControlador,
                          style: const TextStyle(fontSize: 20.0),
                          decoration: InputDecoration(
                            labelText: "Correo Electrónico",
                            labelStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        TextField(
                          controller: _contraseniaControlador,
                          obscureText: true,
                          style: const TextStyle(fontSize: 20.0),
                          decoration: InputDecoration(
                            labelText: "Contraseña",
                            labelStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/principal");
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 10.0),
                          ),
                          child: const Text(
                            "Registrarse",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/iniciarSesion");
                  },
                  child: Text(
                    "¿Ya tienes cuenta? Inicia Sesión",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[900],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
