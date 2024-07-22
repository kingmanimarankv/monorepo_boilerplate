import 'package:app/src/app/app_constants.dart';
import 'package:app/src/l10n/app_localizations.dart';
import 'package:app/src/navigator/app_navigator.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:statsfl/statsfl.dart';

import 'bloc/app_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return StatsFl(
      maxFps: 120,
      align: Alignment.bottomRight,
      isEnabled: kDebugMode,
      child: BlocProvider<AppCubit>(
        create: (context) => getIt<AppCubit>(),
        child: BlocBuilder<AppCubit, AppState>(
          buildWhen: (previous, current) =>
              previous.themeModel != current.themeModel,
          builder: (context, state) => MaterialApp.router(
            themeMode: state.themeModel.themeMode,
            theme: state.themeModel.lightTheme,
            darkTheme: state.themeModel.darkTheme,
            title: AppConstants.appTitle,
            routerConfig: appNavigator,
            locale: state.locale,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          ),
        ),
      ),
    );
  }
}
