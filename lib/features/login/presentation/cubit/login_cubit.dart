import 'package:bloc/bloc.dart';
import 'package:flutter_core_null_safety_2/core/presentation/abstract/bloc/core_state.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<CoreState> {
  LoginCubit() : super(LoginInitial());
}
