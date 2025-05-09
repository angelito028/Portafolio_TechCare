import 'package:flutter/material.dart';

class IniciarSesionScreen extends StatelessWidget {
  IniciarSesionScreen({super.key});

  final TextEditingController _correoControlador = TextEditingController();
  final TextEditingController _contraseniaControlador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, "/bienvenida");
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFE6BE),
                          foregroundColor: Color(0xFF000000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 2.0,
                        ),

                        child: Center(
                          child: const Icon(Icons.arrow_back_ios_new_rounded),
                        ),
                      ),
                    ),

                    const SizedBox(height: 60.0, width: double.minPositive),
                  ],
                ),

                const SizedBox(height: 20.0),

                Text(
                  "Iniciar Sesión",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 50.0),
                ),

                SizedBox(height: 40.0),

                TextField(
                  controller: _correoControlador,
                  style: TextStyle(fontSize: 20.0),
                  decoration: InputDecoration(
                    labelText: "Correo Electrónico",
                    labelStyle: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 20.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFF000000)),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFF000000)),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFF000000)),
                    ),

                    filled: true,
                    fillColor: Color(0xFFFFEDB1),
                    contentPadding: EdgeInsets.all(20.0),
                    // errorText: ,
                  ),
                ),

                const SizedBox(height: 40.0),

                TextField(
                  style: TextStyle(fontSize: 20.0),
                  controller: _contraseniaControlador,
                  maxLines: 1,
                  decoration: InputDecoration(
                    labelText: "Contraseña",
                    labelStyle: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 20.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFF000000)),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFF000000)),
                    ),

                    filled: true,
                    fillColor: Color(0xFFFFEDB1),
                    contentPadding: EdgeInsets.all(20.0),
                    // errorText: ,
                  ),
                ),

                const SizedBox(height: 40.0),

                SizedBox(
                  width: 270.0,
                  height: 70.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, "/principal");
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF1E8A6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 2.0,
                      foregroundColor: Colors.black,
                    ),

                    child: Text("Entrar", style: TextStyle(fontSize: 24.0)),
                  ),
                ),

                const SizedBox(height: 40.0),

                Text(
                  "¿Olvidaste tu Contraseña?",
                  style: TextStyle(fontSize: 20.0),
                ),

                Text(
                  "Recuperala aquí.",
                  style: TextStyle(fontSize: 20.0, color: Color(0xFF0015FF)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
