import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:investlink_mobile/features/language_logic/data/models/language.dart';

part 'local_language_state.dart';

class LocalLanguageCubit extends Cubit<LocalLanguageState> {
  LocalLanguageCubit() : super(LocalLanguageInitial());

  void changeLocalApp(LanguageEntity locale) {
    emit(LanguageLoaded(Locale(locale.code ?? 'ru')));
  }
}
