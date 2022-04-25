import 'package:dartz/dartz.dart';
import 'package:investlink_mobile/core/error/failures.dart';
import 'package:investlink_mobile/features/language_logic/data/models/language.dart';
import 'package:investlink_mobile/features/language_logic/domain/entities/language_model.dart';

abstract class LanguageLogicRepository{
  Future<Either<Failure, LanguageEntityModel>>
    getConcreteLanguageCode(int langNumber);
  Future<Either<Failure, LanguageEntityModel>> getDefaultLanguageCode();
}