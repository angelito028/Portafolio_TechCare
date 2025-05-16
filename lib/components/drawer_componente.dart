import 'package:flutter/material.dart';

class DrawerComponente extends StatelessWidget {
  const DrawerComponente({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xffff7376)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30, // Tamaño ajustado del avatar
                  backgroundImage:
                      AssetImage("assets/logo.png"), // Imagen de logo
                ),
                SizedBox(height: 10),
                Text(
                  "TechCare",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24, // Fuente un poco más pequeña
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          // Aquí van tus ListTiles
          ListTile(
            title: Text(
              "1° Semestre",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onTap: () => Navigator.pushNamed(context, "/primer_semestre"),
          ),
          ListTile(
            title: Text(
              "2° Semestre",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onTap: () => Navigator.pushNamed(context, "/segundo_semestre"),
          ),
          ListTile(
            title: Text(
              "3° Semestre",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onTap: () => Navigator.pushNamed(context, "/tercer_semestre"),
          ),
          ListTile(
            title: Text(
              "4° Semestre",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onTap: () => Navigator.pushNamed(context, "/cuarto_semestre"),
          ),
          ListTile(
            title: Text(
              "5° Semestre",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onTap: () => Navigator.pushNamed(context, "/quinto_semestre"),
          ),
          ListTile(
            title: Text(
              "6° Semestre",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onTap: () => Navigator.pushNamed(context, "/sexto_semestre"),
          ),
        ],
      ),
    );
  }
}
