import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/routes.dart';
import 'package:bookly/core/utils/services_locator.dart';
import 'package:bookly/features/Home/data/Repos/home_repo_impl.dart';
import 'package:bookly/features/Home/presentation/Manager/Feature_book_cubit/feature_book_cubit.dart';
import 'package:bookly/features/Home/presentation/Manager/Newest_book_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:bookly/features/Home/presentation/views/book_view.dart';
// import 'package:bookly/features/Home/presentation/views/home_view.dart';
// import 'package:bookly/features/Search/presentation/views/search_view.dart';


void main() {
  setupServiceLocator();
  runApp(Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => FeatureBookCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create:
              (context) => NewestBookCubit(getIt.get<HomeRepoImpl>())..fetchNewestdBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: Routes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}


    // return MaterialApp(
    //   home: SearchView(),
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:kPrimaryColor,
    //   textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
    // );
    //////////////////////////////////
