import 'package:investlink_mobile/features/language_logic/data/models/language.dart';

abstract class LanguageLogicLocalDataSource{
  Future<LanguageEntity> getLastLanguageCode();
  Future<void> cacheLanguageCode(LanguageEntity languageLogicToCache);
}