import 'package:flutter/material.dart';

class ObjetivoScreen extends StatelessWidget {
  ObjetivoScreen({super.key});

  final PageController _controlador = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          PageView(
            controller: _controlador,
            children: [
              _constructorPaginas(
                color: Colors.amber,
                titulo: "Bienvenido a TechCare",
                descripcion:
                    "TechCare es una aplicación educativa creada para los estudiantes del CBTis 128, que ofrece recursos interactivos y prácticos para aprender Soporte y Mantenimiento de Equipos de Cómputo, facilitando una formación técnica dinámica y efectiva.",
              ),
          
              _constructorPaginas(
                color: Colors.amber,
                titulo: "Objetivo de TechCare",
                descripcion:
                    "Facilitar el aprendizaje en Soporte y Mantenimiento de Equipos de Cómputo mediante una plataforma interactiva que optimiza la comprensión y aplicación de conceptos técnicos.",
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/principal");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                ),
                child: Icon(Icons.arrow_back_ios),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _constructorPaginas({
  Color? color,
  String? titulo,
  String? descripcion,
}) {
  return Container(
    color: color,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(
              titulo!,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 20),

            Text(
              descripcion!,
              style: TextStyle(fontSize: 18, color: Colors.white70),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}
