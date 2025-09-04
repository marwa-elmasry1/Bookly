import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/core/utils/services_locator.dart';
import 'package:bookly/features/Search/Repo/search_repo.dart';
import 'package:bookly/features/Search/presentation/manager/searching_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => SearchCubit(SearchRepo(getIt.get<ApiServices>())),
  child: const SearchView(),
);

  }
}
