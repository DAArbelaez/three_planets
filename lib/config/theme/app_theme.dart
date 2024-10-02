import 'package:flutter/material.dart';
import 'package:three_planets/constants/app_color_constants.dart';

final lightTheme = ThemeData(
  fontFamily: 'Poppins',
  colorScheme: const ColorScheme.light(
    primary: kAmaranthPrimary,
    secondary: kMyrtleGreen,
    onPrimary: kWhite,
    onSecondary: kWhite,
    onTertiary: kWhite,
    surface: kWhite,
    onSurface: kMyrtleGreen,
    error: kAmaranthPrimary,
    surfaceTint: Colors.transparent,
  ),
);