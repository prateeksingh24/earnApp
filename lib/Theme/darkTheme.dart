import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      surface: Colors.black,
      primary: Colors.grey.shade200,
      secondary: Colors.white,
      inversePrimary: Colors.grey.shade700,
    ),
    fontFamily: "Cabin");
