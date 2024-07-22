import 'package:logger/logger.dart';

class LoggingHelper {
  final Logger logIt = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      colors: true,
      printEmojis: true,
      dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    ),
  );

  void debug(
    dynamic message, {
    dynamic error,
    bool showInProd = false,
    StackTrace? stackTrace,
  }) {
    if (!showInProd) {
      return;
    }
    logIt.d(
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  void info(
    dynamic message, {
    dynamic error,
    bool showInProd = false,
    StackTrace? stackTrace,
  }) {
    if (!showInProd) {
      return;
    }
    logIt.i(
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  void warn(
    dynamic message, {
    dynamic error,
    bool showInProd = false,
    StackTrace? stackTrace,
  }) {
    if (!showInProd) {
      return;
    }
    logIt.w(
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  void error(
    dynamic message, {
    dynamic error,
    bool showInProd = false,
    StackTrace? stackTrace,
  }) {
    if (!showInProd) {
      return;
    }
    logIt.e(
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
