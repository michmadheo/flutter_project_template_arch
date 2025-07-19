import 'package:flutter/material.dart';
import 'package:flutter_project_template_arch/assets/colors/asset_colors.dart';

class ThemeSystemMode {
  ThemeSystemMode._();

  static ThemeMode light = ThemeMode.light;
  static ThemeMode dark = ThemeMode.dark;
  static ThemeMode system = ThemeMode.system;

  static ThemeData lightConfig = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AssetColors.white,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
  );

  static ThemeData darkConfig = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AssetColors.grey,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
  );
}
