import 'package:flutter/material.dart';

import 'package:navigation_demo/app_with_dynamic_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppWithDynamicRoutes();
  }
}

/**
 root -> MaterialApp
 Home -> push
 Screen -> pop 
  
 */