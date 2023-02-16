import 'package:flutter/material.dart';
import 'package:flutter_theme/core/theme/app_text_theme.dart';
import 'package:flutter_theme/core/theme/custom_color_theme.dart';
import 'package:flutter_theme/features/homepage/presentation/widgets/header_card.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final appColorTheme = Theme.of(context).extension<CustomColors>();
    final appTextTheme = Theme.of(context).extension<AppTextTheme>();

    return Scaffold(
        backgroundColor: appColorTheme?.background,
        appBar: AppBar(
          title: const Text(
            "Homepage",
          ),
        ),
        body: Column(
          children: [
            const HeaderCard(),
            const SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                "Welcome to Theme Example App",
                style: appTextTheme?.bodyLargeSemiBold.copyWith(
                  color: appColorTheme?.gray,
                ),
              ),
            )
          ],
        ));
  }
}
