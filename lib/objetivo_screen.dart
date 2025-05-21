import 'package:flutter/material.dart';

class ObjetivoScreen extends StatefulWidget {
  const ObjetivoScreen({super.key});

  @override
  State<ObjetivoScreen> createState() => _ObjetivoScreenState();
}

class _ObjetivoScreenState extends State<ObjetivoScreen> {
  final PageController _controladorPagina = PageController();
  int paginaActual = 0;

  final List<Widget> _paginas = [
    _constructorPaginas(
        titulo: "Bienvenido a TechCare",
        descripcion:
            "Bienvenido a TechCare, tu app educativa en el CBTis 128 para aprender fácilmente sobre Soporte y Mantenimiento de Equipos de Cómputo con recursos interactivos y prácticos.",
        rutaImagen: "assets/logo.png"),
    _constructorPaginas(
        titulo: "Objetivo de TechCare",
        descripcion:
            "Facilitar el aprendizaje en Soporte y Mantenimiento de Equipos de Cómputo mediante una plataforma interactiva que optimiza la comprensión y aplicación de conceptos técnicos.",
        rutaImagen: "assets/objetivo.png"),
  ];

  void _paginaSiguiente() {
    if (paginaActual < _paginas.length - 1) {
      _controladorPagina.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _paginaAnterior() {
    if (paginaActual > 0) {
      _controladorPagina.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _irAPrincipal() {
    Navigator.pushReplacementNamed(context, "/principal");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 59, 59),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controladorPagina,
                itemCount: _paginas.length,
                onPageChanged: (i) {
                  setState(() {
                    paginaActual = i;
                  });
                },
                itemBuilder: (context, i) => _paginas[i],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_paginas.length, (i) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 16),
                  width: paginaActual == i ? 20.0 : 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: paginaActual == i ? Colors.white : Colors.white54,
                    borderRadius: BorderRadius.circular(5),
                  ),
                );
              }),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Botón ATRÁS
                  if (paginaActual > 0)
                    // BOTÓN DE ANTERIOR
                    ElevatedButton.icon(
                      onPressed: _paginaAnterior,
                      icon: Icon(Icons.arrow_back),
                      label: Text("Anterior"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black),
                    )
                  else
                    SizedBox(width: 100),

                  if (paginaActual < _paginas.length - 1)
                    // BOTÓN DE SIGUIENTE =)
                    IconButton(
                      onPressed: _paginaSiguiente,
                      icon: Icon(Icons.arrow_forward),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black),
                    )
                  else
                    // BOTÓN DE ENTENDIDO PARA PASAR A PRINCIPAL
                    IconButton(
                      onPressed: _irAPrincipal,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black),
                      icon: Icon(Icons.home_rounded),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _constructorPaginas({
  Color? color,
  required String titulo,
  required String descripcion,
  String? rutaImagen,
}) {
  return Container(
    color: color ?? Color(0xFFFFFFFF),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titulo,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30),
            Text(
              descripcion,
              style: TextStyle(fontSize: 18, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            rutaImagen == null
                ? SizedBox(height: 20.0)
                : SizedBox(
                    width: 200,
                    child: Image.asset(rutaImagen),
                  ),
          ],
        ),
      ),
    ),
  );
}
