import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
    required this.height,
    required this.padding,
    required this.width,
  });

  final double height;
  final double width;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        height: height,
        width: width,
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.fill, image: AssetImage(test)),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
