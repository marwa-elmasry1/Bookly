import 'package:bookly/Core/utils/text_styles.dart';
import 'package:bookly/Core/widgets/custom_list_view.dart';
import 'package:bookly/Core/widgets/custom_list_view_item.dart';
import 'package:bookly/Core/widgets/rate_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_screen_widgets/custom_book_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_screen_widgets/custom_price_container.dart';
import 'package:flutter/material.dart';

class BookScreenBody extends StatelessWidget {
  const BookScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      CustomBookAppbar(),
      SizedBox(
        height: 15,
      ),
      CustomListViewItem(width: 130, height: 200),
      SizedBox(height: 20,),
      Text('Book Title', style: TextStyles.textStyle20,),
      Text('Book Writers Names', style: TextStyles.textStyle14,),
      RateView(
        rateAlignment: Alignment.center,
         height: 40),
         CustomPriceContainer(),
         Container(
           margin: const EdgeInsets.all(8.0),
           alignment: Alignment.topLeft,
           child: Text('You Can Also Like...'),
         ),
         CustomListView(height: 150, width: 100,),
    ],);
  }
}


