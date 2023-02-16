// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_theme/core/theme/app_text_style.dart';

class AppTextTheme extends ThemeExtension<AppTextTheme> {
  TextStyle bodyLargeSemiBold;
  TextStyle bodyNormalRegular;
  AppTextTheme({
    required this.bodyLargeSemiBold,
    required this.bodyNormalRegular,
  });

  @override
  ThemeExtension<AppTextTheme> copyWith({
    TextStyle? bodyLargeSemiBold,
    TextStyle? bodyNormalRegular,
  }) {
    return AppTextTheme(
      bodyLargeSemiBold: bodyLargeSemiBold ?? this.bodyLargeSemiBold,
      bodyNormalRegular: bodyNormalRegular ?? this.bodyNormalRegular,
    );
  }

  @override
  ThemeExtension<AppTextTheme> lerp(
      ThemeExtension<AppTextTheme>? other, double t) {
    return this;
  }

  factory AppTextTheme.light() {
    return AppTextTheme(
      bodyLargeSemiBold: AppTextStyle.bodyLargeSemiBold,
      bodyNormalRegular: AppTextStyle.bodyNormalRegular,
    );
  }
}
