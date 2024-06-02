import 'package:flutter/material.dart';
import 'package:navigation_demo/home_with_named_routes.dart';
import 'package:navigation_demo/screen.dart';

class AppWithNamedRoutes extends StatelessWidget {
  const AppWithNamedRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeWithNamedRoutes(),
      routes: {
        "/screen1": (context) => Screen(title: "Screen 1"),
        "/screen2": (context) => Screen(title: "Screen 2"),
        "/screen3": (context) => Screen(title: "Screen 3"),
      },
    );
  }
}
