import 'package:dependencies/dependencies.dart';

class ObserverForBloc extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    logger.info("onCreate -- ${bloc.runtimeType}");
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    logger
      ..info("onChange-current -- ${bloc.runtimeType}, ${change.currentState}")
      ..info("onChange-next -- ${bloc.runtimeType}, ${change.nextState}");
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.error("onError -- ${bloc.runtimeType}, $error");
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    logger.info("onClose -- ${bloc.runtimeType}");
  }
}
