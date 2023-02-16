// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_theme/core/theme/app_colors.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  final Color? success;
  final Color? info;
  final Color? gray;
  final Color? danger;
  final Color? background;
  final Color? primary;

  CustomColors(
      {this.success,
      this.info,
      this.gray,
      this.danger,
      this.background,
      this.primary});

  @override
  ThemeExtension<CustomColors> copyWith({
    Color? success,
    Color? info,
    Color? gray,
    Color? danger,
    Color? background,
    Color? primary,
  }) {
    return CustomColors(
      success: success ?? this.success,
      info: info ?? this.info,
      gray: gray ?? this.gray,
      danger: danger ?? this.danger,
      background: background ?? this.background,
      primary: primary ?? this.primary,
    );
  }

  factory CustomColors.light() {
    return CustomColors(
      success: AppColors.successColor,
      info: AppColors.info,
      gray: AppColors.gray,
      danger: AppColors.danger,
      background: AppColors.background,
      primary: AppColors.primaryColor,
    );
  }

  @override
  ThemeExtension<CustomColors> lerp(
      ThemeExtension<CustomColors>? other, double t) {
    return this;
  }
}
