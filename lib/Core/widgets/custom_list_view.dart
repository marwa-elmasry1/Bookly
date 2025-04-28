import 'package:bookly/Core/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.height, required this.width});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, state){
          return CustomListViewItem(width: width, height: 210,);
        }),
    );
  }
}