import 'package:flutter/material.dart';
import '../../components/drawer_componente.dart';

class TercerSemestreScreen extends StatelessWidget {
  const TercerSemestreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tercer Semestre"),
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
                "TERCER SEMESTRE",
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
