import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/rating.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/Book_widgets/book_action.dart';
import 'package:bookly/features/Home/presentation/views/Home_widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key, required this.bookdetail});

  final BookModel bookdetail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomListViewItem(
          height: MediaQuery.of(context).size.height * .34,
          padding: EdgeInsets.only(top: 15, bottom: 20),
          width: MediaQuery.of(context).size.width * .4, bookModel:bookdetail ),
        Text(
          bookdetail.volumeInfo.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle18,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(bookdetail.volumeInfo.authors[0], style: Styles.textStyle12),
        ),
        Rating(pageCount: bookdetail.volumeInfo.pageCount.toString(),),
        BookAction(bookPrice:bookdetail.saleInfo.listPrice.amount.toString(),
         bookLink:bookdetail.volumeInfo.previewLink,),
      ],
    );
  }
}
