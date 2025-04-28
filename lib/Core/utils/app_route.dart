import 'package:bookly/Features/home/presentation/views/book_screen.dart';
import 'package:bookly/Features/home/presentation/views/home_screen.dart';
import 'package:bookly/Features/splash/presentation/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
static const kSplashScreen = '/';
static const kHomeScreen = '/home';
static const kBookScreen = '/book';
static final router = GoRouter(
    routes: [
        GoRoute(path: kSplashScreen, builder:(context, state)=>SplashScreen() ),
        GoRoute(path: kHomeScreen, builder:(context, state)=>HomeScreen() ),
        GoRoute(path: kBookScreen, builder:(context, state)=>BookScreen() ),
        ]

);
}