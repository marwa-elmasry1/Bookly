import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/splash_screen/presentation/views/splash_view.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:kPrimaryColor),
      home: SplashView(),
    );
  }
}