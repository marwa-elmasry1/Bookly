import 'package:bookly/core/utils/routes.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
    required this.height,
    required this.padding,
    required this.width,
    required this.bookModel,
  });

  final double height;
  final double width;
  final EdgeInsets padding;
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(Routes.kBookViewPath, extra: bookModel);
      },
      child: Padding(
        padding: padding,
        child: SizedBox(
          height: height,
          width: width,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.fill, image:NetworkImage(bookModel.volumeInfo.imageLinks.thumbnail)),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
