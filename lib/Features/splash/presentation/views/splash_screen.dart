import 'package:bookly/Features/splash/presentation/views/widgets/splash_screen_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: const Scaffold(body: SplashScreenBody()));
  }
}
