import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_theme/core/theme/custom_color_theme.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final appColorTheme = Theme.of(context).extension<CustomColors>();

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200,
          color: appColorTheme?.primary,
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
                  color: appColorTheme?.info,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
