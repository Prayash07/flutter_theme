import 'package:flutter/material.dart';
import 'package:flutter_theme/core/theme/custom_color_theme.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final appColorTheme = Theme.of(context).extension<CustomColors>();
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Homepage",
          ),
        ),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 200,
              color: appColorTheme?.success,
            ),
            Positioned(
              bottom: -40,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * .8,
                    decoration: BoxDecoration(
                      color: appColorTheme?.warning,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
