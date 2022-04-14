import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

abstract class AppColors {
  static const secondary = Color(0xFF61AAE1);
  static const accent = Color(0xFFF7768E);
  static const textDark = Color(0xFF242424);
  static const textLigth = Color(0xFFFEFEFE);
  static const textFaded = Color(0xFF9899A5);
  static const iconLight = Color(0xFFFEFEFE);
  static const iconDark = Color(0xFF8A929A);
  static const textHighlight = secondary;
  static const cardLight = Colors.transparent;
  static const cardDark = Color(0xFFFFFFFF);
}

abstract class _LightColors {
  static const background = Colors.white;
  static const scaffoldbar = Color(0xFF588FBA);
  static const bottombar = Color(0xFFFFFFFF);
  static const card = AppColors.cardLight;
  static const divider = Color(0xFFEAEAEA);
}

abstract class _DarkColors {
  static const background = Color(0xFF1A232E);
  static const scaffoldbar = Color(0xFF222D3B);
  static const bottombar = Color(0xFF222D3B);
  static const card = AppColors.cardLight;
  static const divider = Color(0xFF111B26);
}

/// Reference to the application theme.
abstract class AppTheme {
  static const accentColor = AppColors.accent;
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  /// Light theme and its settings.
  static ThemeData light() => ThemeData(
        brightness: Brightness.light,
        accentColor: accentColor,
        visualDensity: visualDensity,
        textTheme:
            GoogleFonts.mulishTextTheme().apply(bodyColor: AppColors.textDark),
        backgroundColor: _LightColors.background,
        scaffoldBackgroundColor: _LightColors.background,
        bottomAppBarColor: _LightColors.bottombar,
        dividerColor: _LightColors.divider,
        appBarTheme: const AppBarTheme(
          color: _LightColors.scaffoldbar,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.light),
        ),
        cardColor: _LightColors.card,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: AppColors.textDark),
        ),
        iconTheme: const IconThemeData(color: AppColors.iconDark),
      );

  /// Dark theme and its settings.
  static ThemeData dark() => ThemeData(
        brightness: Brightness.dark,
        accentColor: accentColor,
        visualDensity: visualDensity,
        textTheme:
            GoogleFonts.interTextTheme().apply(bodyColor: AppColors.textLigth),
        backgroundColor: _DarkColors.background,
        scaffoldBackgroundColor: _DarkColors.background,
        bottomAppBarColor: _DarkColors.bottombar,
        dividerColor: _DarkColors.divider,
        appBarTheme: const AppBarTheme(
          color: _DarkColors.scaffoldbar,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.light),
        ),
        cardColor: _DarkColors.card,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: AppColors.textLigth),
        ),
        iconTheme: const IconThemeData(color: AppColors.iconLight),
      );
}
