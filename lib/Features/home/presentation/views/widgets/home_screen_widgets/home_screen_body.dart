import 'package:bookly/Core/utils/text_styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/home_screen_widgets/best_seller_list.dart';
import 'package:bookly/Features/home/presentation/views/widgets/home_screen_widgets/custom_home_appbar.dart';
import 'package:bookly/Core/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHomeAppbar(),
        CustomListView(height: 210, width: 120,),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0, top: 30, left: 10),
          child: Text('Best Seller .... ', style: TextStyles.textStyle14),
        ),
        BestSellerList(),
      ],
    );
  }
}
