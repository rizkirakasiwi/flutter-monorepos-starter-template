import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

TextTheme createTextTheme(BuildContext context, String displayFontString) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme displayTextTheme =
      GoogleFonts.getTextTheme(displayFontString, baseTextTheme);
  TextTheme textTheme = displayTextTheme.copyWith(
    displayLarge: baseTextTheme.displayLarge,
    displayMedium: baseTextTheme.displayMedium,
    displaySmall: baseTextTheme.displaySmall,
    headlineLarge: baseTextTheme.headlineLarge,
    headlineMedium: baseTextTheme.headlineMedium,
    headlineSmall: baseTextTheme.headlineSmall,
    titleLarge: baseTextTheme.titleLarge,
    titleMedium: baseTextTheme.titleMedium,
    titleSmall: baseTextTheme.titleSmall,
    bodyLarge: baseTextTheme.bodyLarge,
    bodyMedium: baseTextTheme.bodyMedium,
    bodySmall: baseTextTheme.bodySmall,
    labelLarge: baseTextTheme.labelLarge,
    labelMedium: baseTextTheme.labelMedium,
    labelSmall: baseTextTheme.labelSmall,
  );
  return textTheme;
}
