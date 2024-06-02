import 'package:flutter/material.dart';

import 'package:navigation_demo/home_with_dynamic_routes.dart';
import 'package:navigation_demo/screen.dart';

class AppWithDynamicRoutes extends StatelessWidget {
  const AppWithDynamicRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings settings) {
        if (settings.arguments is List) {
          print("Arguments is a list");
        } else {
          print("Arguments is not a list");
        }
        switch (settings.name) {
          case "/screen1":
            return MaterialPageRoute(
              builder: (context) =>
                  Screen(title: "Screen 1 says ${settings.arguments}"),
            );
          case "/screen2":
            return MaterialPageRoute(
              builder: (context) =>
                  Screen(title: "Screen 2 says ${settings.arguments}"),
            );
          case "/screen3":
            return MaterialPageRoute(
              builder: (context) =>
                  Screen(title: "Screen 3 says ${settings.arguments}"),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => const HomeWithDynamicRoutes(),
            );
        }
      },
    );
  }
}
