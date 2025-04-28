import 'package:bookly/Core/utils/app_route.dart';
import 'package:bookly/Core/utils/text_styles.dart';
import 'package:bookly/Core/widgets/custom_list_view_item.dart';
import 'package:bookly/Core/widgets/rate_view.dart';
import'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRoute.kBookScreen);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomListViewItem(width: 70, height: 100),
            SizedBox(width: 20),
            SizedBox(
              width: 160,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Book Title', style: TextStyles.textStyle18),
                  Text('book Writer', style: TextStyles.textStyle16),
                  Text('price\$', style: TextStyles.textStyle14),
                ],
              ),
            ),
            const RateView(rateAlignment: Alignment.bottomLeft, height: 90),
          ],
        ),
      ),
    );
  }
}