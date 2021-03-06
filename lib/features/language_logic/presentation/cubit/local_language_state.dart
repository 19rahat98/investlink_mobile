part of 'local_language_cubit.dart';

@immutable
abstract class LocalLanguageState {}

class LocalLanguageInitial extends LocalLanguageState {}

class LanguageLoaded extends LocalLanguageState {
  LanguageLoaded(this.locale);

  final Locale locale;
}