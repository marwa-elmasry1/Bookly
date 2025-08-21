import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/feature_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      CustomAppBar(),
      FeatureBooksListView(),
       Padding(
         padding: const EdgeInsets.only(left: 20.0, top: 15),
         child: Text('Best Seller',style: Styles.textStyle16),
       ),
       BestSellerListView(),
       
      ]);
  }
}








