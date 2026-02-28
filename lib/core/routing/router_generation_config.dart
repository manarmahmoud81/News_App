import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/search_screen.dart';
import '../../article_details_screen.dart';
import '../../features/home_screen/home_screen.dart';
import '../../features/splash_screen.dart';
import '../../search_result_screen.dart';
import 'app_routes.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.homeScreen,
    routes: [
      GoRoute(
        path: AppRoutes.homeScreen,
        name: AppRoutes.homeScreen,
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/splash',
        builder: (context, state) => Container(),
      ),
      GoRoute(
        path: AppRoutes.searchScreen,
        name: AppRoutes.searchScreen,
        builder: (context, state) => SearchScreen(),
      ),
      GoRoute(
        path: AppRoutes.articleDetailsScreen,
        name: AppRoutes.articleDetailsScreen,
        builder: (context, state) => ArticleDetailsScreen(),
      ),
      GoRoute(
        path: AppRoutes.searchResultScreen,
        name: AppRoutes.searchResultScreen,
        builder: (context, state) => SearchResultScreen(),
      ),

    ],
  );
}
