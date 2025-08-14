import'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main(){
  runApp(Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashView(),
    );
  }
}