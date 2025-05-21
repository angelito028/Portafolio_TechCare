import 'package:flutter/material.dart';
import 'package:techcare/components/drawer_componente.dart';

class PrimerSemestreScreen extends StatefulWidget {
  const PrimerSemestreScreen({super.key});

  @override
  State<PrimerSemestreScreen> createState() => _PrimerSemestreScreenState();
}

class _PrimerSemestreScreenState extends State<PrimerSemestreScreen> {
  // Mover la lista aquí
  final List<String> temas = [
    'Introducción al hardware',
    'Tipos de mantenimiento (preventivo y correctivo)',
    'Herramientas básicas',
    'Protocolos de seguridad',
    'Desarme y ensamblado de PC',
  ];

  late List<bool> temasVistos;

  @override
  void initState() {
    super.initState();
    temasVistos = List<bool>.filled(temas.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Primer Semestre"),
        backgroundColor: const Color(0xffff7376),
      ),
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Temas del Primer Semestre",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: temas.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.computer),
                    title: Text(temas[index]),
                    trailing: IconButton(
                      icon: Icon(
                        temasVistos[index]
                            ? Icons.check_circle
                            : Icons.check_circle_outline,
                        color: temasVistos[index] ? Colors.green : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          temasVistos[index] = !temasVistos[index];
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              temasVistos[index]
                                  ? "Marcaste '${temas[index]}' como visto."
                                  : "Desmarcaste '${temas[index]}'.",
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
