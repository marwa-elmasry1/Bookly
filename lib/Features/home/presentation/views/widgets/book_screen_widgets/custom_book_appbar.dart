import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookAppbar extends StatelessWidget {
  const CustomBookAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){
            GoRouter.of(context).pop();
          }, icon: Icon(Icons.backspace_outlined,color: Colors.white,)),
          Icon(Icons.shopping_basket)],
      );
  }
}