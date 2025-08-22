import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/rating.dart';
import 'package:bookly/features/Home/presentation/views/Home_widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
    CustomListViewItem(
      height: MediaQuery.of(context).size.height * 0.2,
       padding: const EdgeInsets.only(left: 8.0,right: 15), width: 80,),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Harry Boter And The Global of Firefg',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle18,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                'J.K Rowling',
                style: Styles.textStyle12,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('19.99\$',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w900)),
                  Rating(),
                ],
              ),
        ],
      ),
    )
      ],
    );
  }
}

