import 'package:bookly/features/Home/presentation/views/Home_widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:NeverScrollableScrollPhysics() ,
      // shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 7,
      itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.only(left: 10.0,top: 8.0),
        child: BookListViewItem(),
      );
    });
  }
}