import 'package:bookly/Features/home/presentation/views/widgets/book_screen_widgets/book_screen_body.dart';
import 'package:flutter/material.dart';
class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BookScreenBody(),
      ),
    );
  }
}

