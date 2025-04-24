import 'package:bookly/Core/constants.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(logoPath,width: 200),
          const SizedBox(height: 6.0,),
          Text('Read Books....')
        ],
      ),
    );
  }
}