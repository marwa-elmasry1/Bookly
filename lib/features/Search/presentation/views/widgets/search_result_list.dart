import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/Home_widgets/custom_list_view_item.dart';
import 'package:bookly/features/Search/presentation/manager/searching_cubit/search_cubit.dart';
import 'package:bookly/features/Search/presentation/manager/searching_cubit/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 class SearchResultsList extends StatelessWidget {
  const SearchResultsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
       builder: (context, state) {
         if (state is SearchSuccess) {
           return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: state.books.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 8.0),
            child: CustomSearchResultView(bookDetail: state.books[index],)
          );
        },
      );
         } else if(state is SearchFailure){
          return CustomErrorMessage(errorMessage: state.errorMessage);
         }
         else{
          return CustomLoading();
         }
       },
    );
  }
}

class CustomSearchResultView extends StatelessWidget {
  const CustomSearchResultView({super.key, required this.bookDetail});
  final BookModel bookDetail;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:CustomListViewItem(height: 50, padding: EdgeInsets.all(10), width: 50,
       bookModel: bookDetail) ,
      title: Text(bookDetail.volumeInfo.title,style: Styles.textStyle14,),
      subtitle: Text(bookDetail.volumeInfo.authors[0],style: Styles.textStyle12,),
    );
  }
}