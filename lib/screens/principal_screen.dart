import 'package:flutter/material.dart';
import 'package:techcare/components/drawer_componente.dart';

class PrincipalScreen extends StatelessWidget {
  const PrincipalScreen({super.key});

  // Datos ficticios de temas por semestre
  final Map<String, List<String>> semestres = const {
    'Semestre 1': ['Tema 1', 'Tema 2', 'Tema 3'],
    'Semestre 2': ['Tema 1', 'Tema 2', 'Tema 3', 'Tema 4'],
    'Semestre 3': ['Tema 1', 'Tema 2'],
    'Semestre 4': ['Tema 1'],
    'Semestre 5': ['Tema 1', 'Tema 2', 'Tema 3'],
    'Semestre 6': ['Tema 1', 'Tema 2'],
  };

  // Simula qué temas ha visto el usuario
  final Map<String, List<String>> vistos = const {
    'Semestre 1': ['Tema 1', 'Tema 2'],
    'Semestre 2': ['Tema 1'],
    'Semestre 3': [],
    'Semestre 4': [],
    'Semestre 5': ['Tema 1'],
    'Semestre 6': [],
  };

  double calcularProgreso(String semestre) {
    final total = semestres[semestre]?.length ?? 0;
    final vistosSemestre = vistos[semestre]?.length ?? 0;
    if (total == 0) return 0.0;
    return vistosSemestre / total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TechCare"),
        backgroundColor: const Color(0xffff7376),
      ),
      drawer: DrawerComponente(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "¡Bienvenido a TechCare!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: 200,
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              "Aquí podrás seguir tu progreso en los 6 semestres de Soporte y Mantenimiento.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...semestres.keys.map((semestre) {
              final progreso = calcularProgreso(semestre);
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$semestre - ${(progreso * 100).toStringAsFixed(0)}% completado",
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 5),
                    LinearProgressIndicator(
                      value: progreso,
                      backgroundColor: Colors.grey[300],
                      color: const Color(0xffff7376),
                      minHeight: 10,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
