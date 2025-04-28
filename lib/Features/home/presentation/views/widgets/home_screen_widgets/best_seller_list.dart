import 'package:bookly/Features/home/presentation/views/widgets/home_screen_widgets/best_seller_item.dart';
import'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, state){
          return  BestSellerListItem();
        }),
    );
  }
}


