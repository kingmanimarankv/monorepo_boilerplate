part of 'app_cubit.dart';

class AppState extends Equatable {
  final ThemeModel themeModel;
  final Locale locale;

  const AppState({
    required this.themeModel,
    required this.locale,
  });

  factory AppState.initial() => AppState(
        themeModel: getIt<ThemeModel>(),
        locale: getIt<Locale>(),
      );

  @override
  List<Object> get props => [
        themeModel,
        locale,
      ];

  @override
  String toString() => 'AppState(themeModel: $themeModel, locale: $locale)';
}
