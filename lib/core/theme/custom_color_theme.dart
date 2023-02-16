// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_theme/core/theme/app_colors.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  final Color? success;
  final Color? info;
  final Color? warning;
  final Color? danger;
  CustomColors({
    this.success,
    this.info,
    this.warning,
    this.danger,
  });

  @override
  ThemeExtension<CustomColors> copyWith({
    Color? success,
    Color? info,
    Color? warning,
    Color? danger,
  }) {
    return CustomColors(
      success: success ?? this.success,
      info: info ?? this.info,
      warning: warning ?? this.warning,
      danger: danger ?? this.danger,
    );
  }

  factory CustomColors.light() {
    return CustomColors(
      success: AppColors.successColor,
      info: AppColors.info,
      warning: AppColors.warning,
      danger: AppColors.danger,
    );
  }

  @override
  ThemeExtension<CustomColors> lerp(
      ThemeExtension<CustomColors>? other, double t) {
    return this;
  }
}
