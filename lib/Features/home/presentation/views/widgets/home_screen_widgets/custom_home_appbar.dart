import 'package:bookly/Core/constants.dart';
import 'package:flutter/material.dart';
class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(logoPath,width: 50,height: 50,),
      
              IconButton(
              onPressed: (){},
               icon: Icon(Icons.search))
            ],
          ),
    );
  }}