import 'package:flutter/material.dart';

import 'color_schemes.dart';

var lightThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: lightColorScheme.primary,
    ),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
      color: lightColorScheme.onPrimary,
    ),
    displayMedium: TextStyle(
      fontSize: 36.0,
      fontStyle: FontStyle.italic,
      color: lightColorScheme.onPrimary,
    ),
    displaySmall: TextStyle(
      fontSize: 14.0,
      fontFamily: 'Hind',
      color: lightColorScheme.onPrimary,
    ),
  ),
);

var darkThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: darkColorScheme.primary,
    ),
  ),
);
