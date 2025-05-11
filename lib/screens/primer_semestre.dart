import 'package:flutter/material.dart';
import '../components/drawer_componente.dart';

class PrimerSemestre extends StatelessWidget {
  const PrimerSemestre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primer Semestre"),
        backgroundColor: Color(0xffff7376),
      ),
      drawer: DrawerComponente(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "PRIMER SEMESTRE",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// COMANDOS QUE SE USAN PARA LOGGEARSE EN LAS COMPUTADORAS DE LA ESCUELA 😌
// QUITAR EL --global PARA QUE NO SE GUARDEN MIS DATOS EN LA COMPUTADORA 😀😀

// git config --global user.email "you@example.com"
// git config --global user.name "Your Name"
