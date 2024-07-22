import 'dart:async';

import 'package:app/src/app/app.dart';
import 'package:app/src/observers/observer_for_bloc.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      
      configureDependencyInjection();

      if (UniversalPlatform.isAndroid || UniversalPlatform.isIOS) {
        await SystemChrome.setPreferredOrientations(
          [
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ],
        );
      }

      await SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [
          SystemUiOverlay.top,
          SystemUiOverlay.bottom,
        ],
      );

      Bloc.observer = ObserverForBloc();

      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: UniversalPlatform.isWeb
            ? HydratedStorage.webStorageDirectory
            : await getApplicationDocumentsDirectory(),
      );

      runApp(const App());
    },
    (exception, stackTrace) {},
  );
}
