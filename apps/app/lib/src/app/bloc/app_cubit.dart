import 'package:app/src/app/models/theme_model.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

part 'app_state.dart';

@lazySingleton
class AppCubit extends HydratedCubit<AppState> {
  AppCubit() : super(AppState.initial());

  @override
  AppState? fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(AppState state) {
    throw UnimplementedError();
  }
}
