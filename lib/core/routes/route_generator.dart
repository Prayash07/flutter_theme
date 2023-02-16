import 'package:flutter/material.dart';
import 'package:flutter_theme/core/routes/routes.dart';
import 'package:flutter_theme/features/homepage/presentation/pages/homepage_view.dart';

class AppRoutes {
  static Route<dynamic> routeGenerator(RouteSettings settings) {
    print(settings.name);
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(
          builder: (context) => const HomePageView(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const HomePageView(),
        );
    }
  }
}
