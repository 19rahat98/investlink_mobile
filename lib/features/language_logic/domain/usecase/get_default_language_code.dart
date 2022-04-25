import 'package:dartz/dartz.dart';

import 'package:investlink_mobile/core/error/failures.dart';
import 'package:investlink_mobile/core/usecases/usecases.dart';
import 'package:investlink_mobile/features/language_logic/domain/entities/language_model.dart';
import 'package:investlink_mobile/features/language_logic/domain/repositories/language_logic_repository.dart';

class GetDefaultLanguageCode implements UserCase<LanguageEntityModel, NoParams>{
  GetDefaultLanguageCode(this.repository);

  final LanguageLogicRepository repository;

  @override
  Future<Either<Failure, LanguageEntityModel>> call(NoParams param) async{
    return repository.getDefaultLanguageCode();
  }

}
