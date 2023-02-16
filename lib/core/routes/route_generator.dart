import 'package:flutter/material.dart';
import 'package:flutter_theme/core/routes/routes.dart';
import 'package:flutter_theme/main.dart';

class AppRoutes {
  static Route<dynamic> routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(
          builder: (context) => const MyHomePage(title: "Homepage"),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const MyHomePage(title: "Homepage"),
        );
    }
  }
}
