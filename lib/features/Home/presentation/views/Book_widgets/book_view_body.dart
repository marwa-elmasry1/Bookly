import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/Book_widgets/book_detail_section.dart';
import 'package:bookly/features/Home/presentation/views/Book_widgets/custom_book_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/Book_widgets/similer_books_section.dart';
import 'package:flutter/material.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
   return CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomBookAppBar(),
                  BookDetailSection(bookdetail: bookModel,),
                  SimilerBooksSection(),
                ],
              ),
            ),
          ],
        );
      }
    
  }

