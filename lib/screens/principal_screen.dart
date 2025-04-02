import 'package:flutter/material.dart';

class PrincipalScreen extends StatelessWidget {
  const PrincipalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TechCare"),
        backgroundColor: Color(0xffff7376),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xffff7376)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.computer, size: 50, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    "Menú TechCare",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
            ...List.generate(
              6,
              (index) => ListTile(
                title: Text(
                  "${index + 1}° Semestre",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                onTap: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Bienvenido a TechCare",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),

            Center(child: Image.asset("assets/logo.png", width: 250)),

            Text(
              "Una aplicación educativa diseñada especialmente para los estudiantes del CBTis 128. "
              "Con TechCare, podrás acceder a recursos interactivos que te ayudarán a dominar los fundamentos de Soporte y Mantenimiento de Equipos de Cómputo. "
              "Nuestra plataforma intuitiva te brinda la oportunidad de aprender de forma práctica y dinámica, convirtiéndose en una herramienta clave para potenciar tu formación técnica.",
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 20),

            Center(
              child: Text(
                "Objetivo de Nuestra Aplicación",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Facilitar el aprendizaje en Soporte y Mantenimiento de Equipos de Cómputo mediante una plataforma interactiva que optimiza la comprensión y aplicación de conceptos técnicos.",
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
