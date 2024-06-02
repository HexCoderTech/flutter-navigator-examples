import 'package:flutter/material.dart';

import 'package:navigation_demo/home_with_normal_routes.dart';

class AppWithNormalRoutes extends StatelessWidget {
  const AppWithNormalRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeWithNormalRoutes(),
    );
  }
}
