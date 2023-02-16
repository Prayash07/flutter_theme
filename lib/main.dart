import 'package:flutter/material.dart';
import 'package:flutter_theme/core/routes/route_generator.dart';
import 'package:flutter_theme/core/theme/custom_color_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        extensions: <ThemeExtension<dynamic>>[
          CustomColors.light(),
        ],
      ),
      onGenerateRoute: AppRoutes.routeGenerator,
    );
  }
}
