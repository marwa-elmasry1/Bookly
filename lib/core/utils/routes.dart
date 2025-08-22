import 'package:bookly/features/Home/presentation/views/book_view.dart';
import 'package:bookly/features/Home/presentation/views/home_view.dart';
import 'package:bookly/features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class Routes {

static String kSplashViewPath = '/';
static String kHomeViewPath= '/homeView';
static String kBookViewPath = '/bookView';

  static final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: kSplashViewPath, builder: (context, state)=> SplashView()),
    GoRoute(path: kHomeViewPath, builder: (context, state)=> HomeView()),
    GoRoute(path: kBookViewPath, builder: (context, state)=> BookView()),

  ]
  );
}