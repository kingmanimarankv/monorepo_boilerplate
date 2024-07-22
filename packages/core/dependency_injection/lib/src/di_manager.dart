import 'package:dependency_injection/src/di_manager.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<GetIt> configureDependencyInjection() async => getIt.init();
