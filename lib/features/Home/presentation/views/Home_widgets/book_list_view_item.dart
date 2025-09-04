import 'package:bookly/core/utils/routes.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/rating.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/Home_widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookDetail});

  final BookModel bookDetail;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Routes.kBookViewPath, extra: bookDetail);
      },
      child: Row(
        children: [
          CustomListViewItem(
            height: MediaQuery.of(context).size.height * 0.2,
            padding: const EdgeInsets.only(left: 8.0, right: 15),
            width: 80,
            bookModel: bookDetail,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookDetail.volumeInfo.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle18,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    bookDetail.volumeInfo.authors[0],
                    style: Styles.textStyle12,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '(${bookDetail.saleInfo.listPrice.amount}\$)',
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Rating(
                      pageCount:
                          bookDetail.volumeInfo.pageCount.toString(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
