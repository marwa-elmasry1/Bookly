import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/Home/presentation/Manager/Newest_book_cubit/newest_book_cubit.dart';
import 'package:bookly/features/Home/presentation/Manager/Newest_book_cubit/newest_book_state.dart';
import 'package:bookly/features/Home/presentation/views/Home_widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state){
        if (state is NewestBookStateSuccess) {
          return  ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: state.books.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 8.0),
            child: BookListViewItem(bookDetail: state.books[index]),
          );
        },
      );
        } else if (state is NewestBookStateFailure){
          return CustomErrorMessage(errorMessage: state.errorMessage
          );
        } else {
          return CustomLoading();
        }
      } ,
    );
  }
}
