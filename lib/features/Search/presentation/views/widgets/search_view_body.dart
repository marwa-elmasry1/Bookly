import 'package:bookly/features/Search/presentation/manager/searching_cubit/search_cubit.dart';
import 'package:bookly/features/Search/presentation/views/widgets/search_result_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search for books...",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
            onSubmitted: (value) {
              context.read<SearchCubit>().searchBooks(value);
            },
          ),
        ),
        Expanded(child: SearchResultsList()), 
      ],
    );
  }
}
