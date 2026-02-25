import 'package:go_router/go_router.dart';
import 'package:news_app/search_screen.dart';
import '../../home_screen.dart';
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
        path: AppRoutes.searchScreen,
        name: AppRoutes.searchScreen,
        builder: (context, state) => SearchScreen(),
      ),

    ],
  );
}
