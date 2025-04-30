import 'package:bookly/Core/constants.dart';
import 'package:bookly/Core/utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animationText;
  late Animation<Offset> animationImage;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animationImage = Tween<Offset>(
      begin: const Offset(0, 9),
      end: Offset.zero,
    ).animate(animationController);
    animationText = Tween<Offset>(
      begin: const Offset(0, -7),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();

    Future.delayed(const Duration(seconds: 4), () {
      // ignore: use_build_context_synchronously
      GoRouter.of(context).push(AppRoute.kHomeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SlideTransition(
            position: animationImage,
            child: Image.asset(logoPath, width: 200),
          ),
          const SizedBox(height: 6.0),
          SlideTransition(
            position: animationText,
            child: Text('Read Books With Bookly....'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
