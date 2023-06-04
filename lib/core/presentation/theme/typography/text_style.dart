import 'package:flutter/material.dart';
import 'package:postsapp/core/presentation/theme/color_palette.dart';
import 'package:postsapp/core/presentation/theme/typography/_typography.dart';

abstract class AppTextStyle {
  static const _baseTextStyle = TextStyle(
    fontWeight: AppFontWeight.regular,
    letterSpacing: 0,
  );

  /// Display medium Text Style
  static TextStyle get tiny => _baseTextStyle.copyWith(fontSize: 14);

  static TextStyle get small => _baseTextStyle.copyWith(fontSize: 16);

  static TextStyle get medium =>
      _baseTextStyle.copyWith(color: ColorPalette.green, fontSize: 20, fontWeight: AppFontWeight.medium);

  static TextStyle get large => _baseTextStyle.copyWith(color: ColorPalette.green, fontSize: 24, fontWeight: AppFontWeight.bold);

  static TextStyle get error => _baseTextStyle.copyWith(color: ColorPalette.red, fontSize: 12);
}
