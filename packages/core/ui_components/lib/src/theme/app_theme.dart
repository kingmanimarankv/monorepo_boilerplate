import 'package:flutter/material.dart';

abstract class AppTheme {
  ThemeData get appTheme;
}

class AppLightTheme implements AppTheme {
  @override
  ThemeData get appTheme => ThemeData();
}

class AppDarkTheme implements AppTheme {
  @override
  ThemeData get appTheme => ThemeData();
}
