import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:investlink_mobile/bootstrap.dart';
import 'package:investlink_mobile/core/app/app.dart';

void main() {
  mainDelegate();
  BlocOverrides.runZoned(
    () => runApp(const App()),
    blocObserver: AppBlocObserver(),
  );
}
