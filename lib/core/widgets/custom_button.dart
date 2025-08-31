import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    required this.borderRadius,
    this.height,
    this.width, required this.onPressed,
  });

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final BorderRadius borderRadius;
  final Function onPressed;

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size(width ?? 0, height ?? 0),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: Styles.textStyle16.copyWith(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
