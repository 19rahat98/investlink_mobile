import 'package:investlink_mobile/features/language_logic/data/models/language.dart';

abstract class LanguageLogicRemoteDataSource{
  Future<LanguageEntity> getConcreteLanguageCode(int langNumber);
  Future<LanguageEntity> getDefaultLanguageCode();
}