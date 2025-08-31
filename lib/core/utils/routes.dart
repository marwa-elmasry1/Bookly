import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/book_view.dart';
import 'package:bookly/features/Home/presentation/views/home_view.dart';
import 'package:bookly/features/Search/presentation/views/search_view.dart';
import 'package:bookly/features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class Routes {
  static String kSplashViewPath = '/';
  static String kHomeViewPath = '/homeView';
  static String kBookViewPath = '/bookView';
  static String kSearchViewPath = '/searchView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: kSplashViewPath, builder: (context, state) => SplashView()),
      GoRoute(path: kHomeViewPath, builder: (context, state) => HomeView()),
      GoRoute(path: kBookViewPath, builder: (context, state) {
         final book = state.extra as BookModel; 
          return BookView(bookModel: book);
      } ),
      GoRoute(path: kSearchViewPath, builder: (context, state) => SearchView()),
    ],
  );
}
