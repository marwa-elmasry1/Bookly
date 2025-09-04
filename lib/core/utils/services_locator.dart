// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly/features/Search/Repo/search_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/Home/data/Repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(getIt.get<ApiServices>()));
  getIt.registerSingleton<SearchRepo>(
    SearchRepo(getIt.get<ApiServices>()));
}