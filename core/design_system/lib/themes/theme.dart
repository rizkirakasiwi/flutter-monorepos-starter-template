import "package:flutter/material.dart";
import 'color.dart';

class AppTheme {
  final TextTheme textTheme;

  const AppTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      surfaceTint: AppColors.surfaceTint,
      onPrimary: AppColors.onPrimary,
      primaryContainer: AppColors.primaryContainer,
      onPrimaryContainer: AppColors.onPrimaryContainer,
      secondary: AppColors.secondary,
      onSecondary: AppColors.onSecondary,
      secondaryContainer: AppColors.secondaryContainer,
      onSecondaryContainer: AppColors.onSecondaryContainer,
      tertiary: AppColors.tertiary,
      onTertiary: AppColors.onTertiary,
      tertiaryContainer: AppColors.tertiaryContainer,
      onTertiaryContainer: AppColors.onTertiaryContainer,
      error: AppColors.error,
      onError: AppColors.onError,
      errorContainer: AppColors.errorContainer,
      onErrorContainer: AppColors.onErrorContainer,
      background: AppColors.background,
      onBackground: AppColors.onBackground,
      surface: AppColors.surface,
      onSurface: AppColors.onSurface,
      surfaceVariant: AppColors.surfaceVariant,
      onSurfaceVariant: AppColors.onSurfaceVariant,
      outline: AppColors.outline,
      outlineVariant: AppColors.outlineVariant,
      shadow: AppColors.shadow,
      scrim: AppColors.scrim,
      inverseSurface: AppColors.inverseSurface,
      inverseOnSurface: AppColors.inverseOnSurface,
      inversePrimary: AppColors.inversePrimary,
      primaryFixed: AppColors.primaryFixed,
      onPrimaryFixed: AppColors.onPrimaryFixed,
      primaryFixedDim: AppColors.primaryFixedDim,
      onPrimaryFixedVariant: AppColors.onPrimaryFixedVariant,
      secondaryFixed: AppColors.secondaryFixed,
      onSecondaryFixed: AppColors.onSecondaryFixed,
      secondaryFixedDim: AppColors.secondaryFixedDim,
      onSecondaryFixedVariant: AppColors.onSecondaryFixedVariant,
      tertiaryFixed: AppColors.tertiaryFixed,
      onTertiaryFixed: AppColors.onTertiaryFixed,
      tertiaryFixedDim: AppColors.tertiaryFixedDim,
      onTertiaryFixedVariant: AppColors.onTertiaryFixedVariant,
      surfaceDim: AppColors.surfaceDim,
      surfaceBright: AppColors.surfaceBright,
      surfaceContainerLowest: AppColors.surfaceContainerLowest,
      surfaceContainerLow: AppColors.surfaceContainerLow,
      surfaceContainer: AppColors.surfaceContainer,
      surfaceContainerHigh: AppColors.surfaceContainerHigh,
      surfaceContainerHighest: AppColors.surfaceContainerHighest,
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: AppColors.darkPrimary,
      surfaceTint: AppColors.darkSurfaceTint,
      onPrimary: AppColors.darkOnPrimary,
      primaryContainer: AppColors.darkPrimaryContainer,
      onPrimaryContainer: AppColors.darkOnPrimaryContainer,
      secondary: AppColors.darkSecondary,
      onSecondary: AppColors.darkOnSecondary,
      secondaryContainer: AppColors.darkSecondaryContainer,
      onSecondaryContainer: AppColors.darkOnSecondaryContainer,
      tertiary: AppColors.darkTertiary,
      onTertiary: AppColors.darkOnTertiary,
      tertiaryContainer: AppColors.darkTertiaryContainer,
      onTertiaryContainer: AppColors.darkOnTertiaryContainer,
      error: AppColors.darkError,
      onError: AppColors.darkOnError,
      errorContainer: AppColors.darkErrorContainer,
      onErrorContainer: AppColors.darkOnErrorContainer,
      background: AppColors.darkBackground,
      onBackground: AppColors.darkOnBackground,
      surface: AppColors.darkSurface,
      onSurface: AppColors.darkOnSurface,
      surfaceVariant: AppColors.darkSurfaceVariant,
      onSurfaceVariant: AppColors.darkOnSurfaceVariant,
      outline: AppColors.darkOutline,
      outlineVariant: AppColors.darkOutlineVariant,
      inverseSurface: AppColors.darkInverseSurface,
      inverseOnSurface: AppColors.darkInverseOnSurface,
      inversePrimary: AppColors.darkInversePrimary,
      surfaceDim: AppColors.darkSurfaceDim,
      surfaceBright: AppColors.darkSurfaceBright,
      surfaceContainerLowest: AppColors.darkSurfaceContainerLowest,
      surfaceContainerLow: AppColors.darkSurfaceContainerLow,
      surfaceContainer: AppColors.darkSurfaceContainer,
      surfaceContainerHigh: AppColors.darkSurfaceContainerHigh,
      surfaceContainerHighest: AppColors.darkSurfaceContainerHighest,
      // Shared colors with light theme
      shadow: AppColors.shadow,
      scrim: AppColors.scrim,
      primaryFixed: AppColors.primaryFixed,
      onPrimaryFixed: AppColors.onPrimaryFixed,
      primaryFixedDim: AppColors.primaryFixedDim,
      onPrimaryFixedVariant: AppColors.onPrimaryFixedVariant,
      secondaryFixed: AppColors.secondaryFixed,
      onSecondaryFixed: AppColors.onSecondaryFixed,
      secondaryFixedDim: AppColors.secondaryFixedDim,
      onSecondaryFixedVariant: AppColors.onSecondaryFixedVariant,
      tertiaryFixed: AppColors.tertiaryFixed,
      onTertiaryFixed: AppColors.onTertiaryFixed,
      tertiaryFixedDim: AppColors.tertiaryFixedDim,
      onTertiaryFixedVariant: AppColors.onTertiaryFixedVariant,
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: false,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );

  /// primary_2
  static const primary2 = ExtendedColor(
    seed: Color(0xff94c384),
    value: Color(0xff83c596),
    light: ColorFamily(
      color: Color(0xff2e6a44),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb1f1c1),
      onColorContainer: Color(0xff00210e),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff2e6a44),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb1f1c1),
      onColorContainer: Color(0xff00210e),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff2e6a44),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb1f1c1),
      onColorContainer: Color(0xff00210e),
    ),
    dark: ColorFamily(
      color: Color(0xff96d5a7),
      onColor: Color(0xff00391c),
      colorContainer: Color(0xff11512e),
      onColorContainer: Color(0xffb1f1c1),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xff96d5a7),
      onColor: Color(0xff00391c),
      colorContainer: Color(0xff11512e),
      onColorContainer: Color(0xffb1f1c1),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xff96d5a7),
      onColor: Color(0xff00391c),
      colorContainer: Color(0xff11512e),
      onColorContainer: Color(0xffb1f1c1),
    ),
  );

  /// primary_3
  static const primary3 = ExtendedColor(
    seed: Color(0xffd3ca90),
    value: Color(0xffd3ca90),
    light: ColorFamily(
      color: Color(0xff685f12),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfff1e48a),
      onColorContainer: Color(0xff201c00),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff685f12),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfff1e48a),
      onColorContainer: Color(0xff201c00),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff685f12),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfff1e48a),
      onColorContainer: Color(0xff201c00),
    ),
    dark: ColorFamily(
      color: Color(0xffd4c871),
      onColor: Color(0xff363100),
      colorContainer: Color(0xff4f4800),
      onColorContainer: Color(0xfff1e48a),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffd4c871),
      onColor: Color(0xff363100),
      colorContainer: Color(0xff4f4800),
      onColorContainer: Color(0xfff1e48a),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffd4c871),
      onColor: Color(0xff363100),
      colorContainer: Color(0xff4f4800),
      onColorContainer: Color(0xfff1e48a),
    ),
  );

  /// primary_4
  static const primary4 = ExtendedColor(
    seed: Color(0xff73ba84),
    value: Color(0xff73ba84),
    light: ColorFamily(
      color: Color(0xff316a42),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb3f1be),
      onColorContainer: Color(0xff00210c),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff316a42),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb3f1be),
      onColorContainer: Color(0xff00210c),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff316a42),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffb3f1be),
      onColorContainer: Color(0xff00210c),
    ),
    dark: ColorFamily(
      color: Color(0xff98d4a4),
      onColor: Color(0xff003919),
      colorContainer: Color(0xff16512c),
      onColorContainer: Color(0xffb3f1be),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xff98d4a4),
      onColor: Color(0xff003919),
      colorContainer: Color(0xff16512c),
      onColorContainer: Color(0xffb3f1be),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xff98d4a4),
      onColor: Color(0xff003919),
      colorContainer: Color(0xff16512c),
      onColorContainer: Color(0xffb3f1be),
    ),
  );


  List<ExtendedColor> get extendedColors => [
    primary2,
    primary3,
    primary4,
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
