import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.animation});

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        return SlideTransition(
          position: animation,
          child: Text(
            'Read More, Explore More',
            style: Styles.textStyle12,
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
