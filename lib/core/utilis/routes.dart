import 'package:books_app/presentation/Screens/book_details_screen/book_detils_screen.dart';
import 'package:books_app/presentation/Screens/home%20screen/home_screen.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/Screens/splash Screen/splash_view.dart';

abstract class AppRouter
{
  static const kHomeView = '/homeScreen';
    static const kBookDetails = '/BookDetails';
 static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
     GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: kBookDetails,
      builder: (context, state) => const BookDetailsScreen(),
    ),
  ],
);
}