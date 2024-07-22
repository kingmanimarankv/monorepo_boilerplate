import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

@singleton
class ThemeModel extends Equatable {
  final ThemeMode themeMode;
  final ThemeData lightTheme;
  final ThemeData darkTheme;

  const ThemeModel({
    required this.themeMode,
    required this.lightTheme,
    required this.darkTheme,
  });

  factory ThemeModel.initial() => ThemeModel(
        themeMode: ThemeMode.system,
        lightTheme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
      );

  ThemeModel copyWith({
    ThemeMode? themeMode,
    ThemeData? lightTheme,
    ThemeData? darkTheme,
  }) {
    return ThemeModel(
      themeMode: themeMode ?? this.themeMode,
      lightTheme: lightTheme ?? this.lightTheme,
      darkTheme: darkTheme ?? this.darkTheme,
    );
  }

  @override
  List<Object> get props => [
        themeMode,
        lightTheme,
        darkTheme,
      ];

  @override
  String toString() =>
      'ThemeModel(themeMode: $themeMode, lightTheme: $lightTheme, darkTheme: $darkTheme)';
}
