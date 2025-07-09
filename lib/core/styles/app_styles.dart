import 'package:flutter/widgets.dart';

abstract class AppStyles {
  static const String fontFamily = 'Manrope';

  // static const Color defaultTextColor = Color(0xFFF2F3F4);
  static const Color defaultTextColor = Color.fromARGB(255, 1, 15, 28);

  // --- Headlines ---
  static const TextStyle headlineLarge32Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: defaultTextColor,
  );

  static const TextStyle headlineMedium28Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: defaultTextColor,
  );

  static const TextStyle headlineSmall24Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: defaultTextColor,
  );

  // --- Titles ---
  static const TextStyle titleLarge22Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: defaultTextColor,
  );

  static const TextStyle titleMedium18Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: defaultTextColor,
  );

  static const TextStyle titleSmall16Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: defaultTextColor,
  );

  // --- Body ---
  static const TextStyle bodyLarge16Medium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: defaultTextColor,
  );

  static const TextStyle bodyMedium16Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: defaultTextColor,
  );

  // --- Labels ---
  static const TextStyle labelMedium14Regular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: defaultTextColor,
  );
}
