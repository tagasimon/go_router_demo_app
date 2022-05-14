import 'package:go_router/go_router.dart';
import 'package:go_router_demo_app/screens/about_screen.dart';
import 'package:go_router_demo_app/screens/home_screen.dart';

final goRouter = GoRouter(
  initialLocation: "/",
  urlPathStrategy: UrlPathStrategy.path,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
        path: "/",
        name: HomeScreen.routeName,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: "${AboutScreen.routeName}/:index",
            name: AboutScreen.routeName,
            builder: (context, state) {
              final itemIndex = int.parse(state.params["index"]!);
              return AboutScreen(index: itemIndex);
            },
          ),
        ]),
  ],
);
