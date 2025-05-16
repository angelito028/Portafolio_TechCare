import 'package:flutter/material.dart';
import '../../components/drawer_componente.dart';

class SegundoSemestreScreen extends StatelessWidget {
  const SegundoSemestreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segundo Semestre"),
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
                "SEGUNDO SEMESTRE",
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
