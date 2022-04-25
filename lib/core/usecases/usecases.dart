import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:investlink_mobile/core/error/failures.dart';
import 'package:investlink_mobile/features/language_logic/domain/entities/language_model.dart';

abstract class UserCase<Type, Parameter>{
  Future<Either<Failure, LanguageEntityModel>> call(Parameter param);

}


class NoParams extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}