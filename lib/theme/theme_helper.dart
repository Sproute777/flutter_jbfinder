import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jobfinder_ui/jobfinder_ui.dart';
import '../../core/app_export.dart';

String _PrimaryColors = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _PrimaryColors = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_PrimaryColors)) {
      throw Exception(
          "$_PrimaryColors is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_PrimaryColors] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_PrimaryColors)) {
      throw Exception(
          "$_PrimaryColors is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_PrimaryColors] ??
        ColorSchemes.primaryColorScheme;
    return ThemeData(
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: PrimaryColors.indigo900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              6,
            ),
          ),
          shadowColor: PrimaryColors.indigo2002d,
          elevation: 4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: PrimaryColors.indigo900,
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: PrimaryColors.gray90001,
          fontSize: getFontSize(
            30,
          ),
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: TextStyle(
          color: PrimaryColors.blueGray700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: PrimaryColors.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: PrimaryColors.whiteA700,
          fontSize: getFontSize(
            26,
          ),
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onError,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onError,
          fontSize: getFontSize(
            40,
          ),
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: PrimaryColors.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: PrimaryColors.gray90001,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
        ),
      ),
      visualDensity: VisualDensity.standard,
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    background: Color(0X874C3F7B),
    error: Color(0XFF3F13E4),
    errorContainer: Color(0XFFFF9228),
    inversePrimary: Color(0X874C3F7B),
    inverseSurface: Color(0XFF3F13E4),
    onBackground: Color(0X990D0040),
    onError: Color(0XFF000000),
    onErrorContainer: Color(0XFF3F13E4),
    onInverseSurface: Color(0XFF000000),
    onPrimary: Color(0XFF3F13E4),
    onPrimaryContainer: Color(0X990D0040),
    onSecondary: Color(0X990D0040),
    onSecondaryContainer: Color(0XFF3F13E4),
    onSurface: Color(0X990D0040),
    onSurfaceVariant: Color(0XFF3F13E4),
    onTertiary: Color(0X990D0040),
    onTertiaryContainer: Color(0XFF3F13E4),
    outline: Color(0XFF3F13E4),
    outlineVariant: Color(0X874C3F7B),
    primary: Color(0XFFD6CDFE),
    primaryContainer: Color(0X874C3F7B),
    scrim: Color(0X874C3F7B),
    secondary: Color(0X874C3F7B),
    secondaryContainer: Color(0XFFE6E1FF),
    shadow: Color(0XFF3F13E4),
    surface: Color(0X874C3F7B),
    surfaceTint: Color(0XFF3F13E4),
    surfaceVariant: Color(0XFFE6E1FF),
    tertiary: Color(0X874C3F7B),
    tertiaryContainer: Color(0XFFE6E1FF),
  );
}

/// Class containing custom colors for a primary theme.
// class PrimaryColors {
//   // BlueGray
//   static const blueGray300 = Color(0XFFA9A5B8);
//   static const blueGray400 = Color(0XFF888888);
//   static const blueGray500 = Color(0XFF60778C);
//   static const blueGray700 = Color(0XFF514A6B);
//   // Gray
//   static const gray50 = Color(0XFFF8F8F8);
//   static const gray600 = Color(0XFF69687F);
//   static const gray900 = Color(0XFF150B3D);
//   static const gray90001 = Color(0XFF0D0140);
//   // Indigod
//   static const indigo2002d = Color(0X2D99AAC5);
//   // Indigo
//   static const indigo900 = Color(0XFF130160);
//   // Orange
//   static const orange100 = Color(0XFFFED5AD);
//   static const orangeA200 = Color(0XFFFCA34D);
//   // White
//   static const whiteA700 = Color(0XFFFFFFFF);
// }

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
