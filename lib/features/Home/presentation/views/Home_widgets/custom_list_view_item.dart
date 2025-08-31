import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
    required this.height,
    required this.padding,
    required this.width,
    required this.imageUrl,
  });

  final double height;
  final double width;
  final EdgeInsets padding;
  final String imageUrl;

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
              image: DecorationImage(fit: BoxFit.fill, image:NetworkImage(imageUrl)),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
