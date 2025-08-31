import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/Home/presentation/Manager/Feature_book_cubit/feature_book_cubit.dart';
import 'package:bookly/features/Home/presentation/Manager/Feature_book_cubit/feature_book_state.dart';
import 'package:bookly/features/Home/presentation/views/Home_widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBookCubit,FeatureBookState>(
      builder: (context, state) {
       if (state is FeatureBookStateSuccess) {
          return Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SizedBox(
            height: height,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomListViewItem(
                  width: 110,
                  height: MediaQuery.of(context).size.height * 0.3,
                  padding: const EdgeInsets.only(left: 8.0),
                   imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                );
              },
            ),
          ),
        );
       }
       else if(state is FeatureBookStateFailure){
        return CustomErrorMessage(errorMessage: state.errorMessage);
       } else {
        return CustomLoading();
       }
      }
    );
  }
}
