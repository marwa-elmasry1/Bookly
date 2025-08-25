import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/routes.dart';
import 'package:bookly/features/Home/presentation/views/book_view.dart';
import 'package:bookly/features/Home/presentation/views/home_view.dart';
import 'package:bookly/features/Search/presentation/views/search_view.dart';
import'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: SearchView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:kPrimaryColor,
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
    );
    //////////////////////////////////
    // return MaterialApp.router(
    //   routerConfig: Routes.router ,
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:kPrimaryColor,
    //   textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
    // );
  }
}