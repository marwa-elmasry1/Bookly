import 'package:bookly/features/Home/presentation/views/Book_widgets/book_view_body.dart';
import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BookViewBody());
  }
}
