import 'package:flutter/material.dart';
import '../../components/drawer_componente.dart';

class SextoSemestreScreen extends StatelessWidget {
  const SextoSemestreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sexto Semestre"),
        backgroundColor: Color(0xffff7376),
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "SEXTO SEMESTRE",
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
