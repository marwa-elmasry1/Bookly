import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/Home_widgets/feature_books_list_view.dart';
import 'package:flutter/material.dart';
class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
           padding: const EdgeInsets.only(bottom: 8.0,left: 10),
           child: Text('You Can Also Like....', style: Styles.textStyle12),
         ),
    
        FeatureBooksListView(
    height: MediaQuery.of(context).size.height * 0.22,),
      ],
    );
  }
}