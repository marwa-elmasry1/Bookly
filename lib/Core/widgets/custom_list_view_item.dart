import 'package:bookly/Core/constants.dart';
import 'package:bookly/Core/utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.width, required this.height});

  final double width ;
  final double height;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRoute.kBookScreen);
      },
      child: Container(
        margin: EdgeInsets.only(left: 10),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(image: AssetImage(testImage),fit: BoxFit.fill)
        ),
      ),
    );
  }
}
/**
 *   width: 120,
      height: 210,
 */