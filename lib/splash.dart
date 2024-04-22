import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:jardindelconocimiento/vistaprincipal.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('imagenes/animacion.json', width: 250, height: 250),
          SizedBox(height: 20),
          Text(
            "Jardin del conocimiento",
            style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
              color: Colors.green
            ),
          ),
        ],
      ),
      nextScreen: VistaPrincipal(),
      duration: 7900,
      splashIconSize: 300,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: const Duration(seconds: 2),
    );
  }
}
