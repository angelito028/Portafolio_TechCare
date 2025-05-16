import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _logoController;
  late final Animation<double> _logoScale;
  late final Animation<double> _logoOpacity;

  late final AnimationController _textController;

  @override
  void initState() {
    super.initState();

    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    // Zoom de 0.5x a 1.0x para que haga "zoom in"
    _logoScale = Tween<double>(begin: 0.5, end: 1.5).animate(
      CurvedAnimation(
        parent: _logoController,
        curve: Curves.easeOutBack,
      ),
    );

    // Opacidad suave
    _logoOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _logoController,
        curve: Curves.easeIn,
      ),
    );

    // Texto
    _textController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    // Inicia animaciones
    _logoController.forward();
    Future.delayed(const Duration(milliseconds: 1600), () {
      _textController.forward();
    });

    Future.delayed(const Duration(milliseconds: 4000), () {
      Navigator.pushReplacementNamed(context, '/bienvenida');
    });
  }

  @override
  void dispose() {
    _logoController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ScaleTransition(
              scale: _logoScale,
              child: FadeTransition(
                opacity: _logoOpacity,
                child: Image.asset(
                  'assets/logo.png',
                  width: 160,
                  height: 160,
                ),
              ),
            ),
            const SizedBox(height: 30),
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.5, 0),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: _textController,
                curve: Curves.easeOut,
              )),
              child: FadeTransition(
                opacity: _textController.drive(
                  CurveTween(curve: Curves.easeIn),
                ),
                child: const Text(
                  'TechCare',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
