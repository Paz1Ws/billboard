import 'package:flutter/material.dart';

class AppTheme {
  ThemeData GetTheme() {
    return ThemeData(
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.brown),
    );
  }
}
