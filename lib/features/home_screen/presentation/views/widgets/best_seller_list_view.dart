import 'package:bookly/features/home_screen/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height* 0.56,
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: BestSellerListViewItem(),
          );
        }),
      ),
    );
  }
}