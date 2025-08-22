
import 'package:bookly/features/Home/presentation/views/Home_widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.28,
        child: ListView.builder(
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
          return  CustomListViewItem(
            width: 110,
            height: MediaQuery.of(context).size.height * 0.3,
           padding: const EdgeInsets.only(left: 8.0),);
        }),
      ),
    );
  }
}