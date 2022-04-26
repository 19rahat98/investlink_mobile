part of 'login_cubit.dart';

/// Изначальная состояние логин блоко
class LoginInitial extends CoreState {}

/// Состояние при успешном логине
class LoginSuccessState extends CoreState {
  @override
  List<Object> get props => [];
}

/// Состояние если возникла проблема с логином
class LoginFailState extends CoreState {
  LoginFailState({
    required this.errorMessage,
  });

  final String errorMessage;

  @override
  List<Object> get props => [];
}
