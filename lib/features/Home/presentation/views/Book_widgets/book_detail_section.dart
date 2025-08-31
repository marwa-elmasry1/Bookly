import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/rating.dart';
import 'package:bookly/features/Home/presentation/views/Book_widgets/book_action.dart';
import 'package:bookly/features/Home/presentation/views/Home_widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomListViewItem(
          height: MediaQuery.of(context).size.height * .34,
          padding: EdgeInsets.only(top: 15, bottom: 20),
          width: MediaQuery.of(context).size.width * .4, imageUrl: 'https://tse4.mm.bing.net/th/id/OIP.wd-Dq9mV9MAr4h8imSlZOwHaL1?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
        ),
        Text(
          'Harry Boter And The Global of Firefg',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle18,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text('J.K Rowling', style: Styles.textStyle12),
        ),
        Rating(),
        BookAction(),
      ],
    );
  }
}
