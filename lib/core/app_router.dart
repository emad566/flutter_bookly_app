import 'package:flutter_bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter_bookly_app/features/search/presentation/views/search_view.dart';
import 'package:flutter_bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const routerSplashView = '/SplashView';
  static const routerHomeView = '/HomeView';
  static const routerBookDetailsView = '/BookDetailsView';
  static const routerSearchView = '/SearchView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: routerHomeView,
      builder: (context, state) => const HomeView(),
    ),
    // GoRoute(
    //   path: routerBookDetailsView,
    //   builder: (context, state) => const BookDetailsView(),
    // ),
    GoRoute(
      path: routerSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
