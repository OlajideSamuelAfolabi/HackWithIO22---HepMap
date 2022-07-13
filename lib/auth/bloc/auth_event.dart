part of 'auth_bloc.dart';

abstract class AuthEvent {}

class CreateAccount extends AuthEvent {
  final String email;
  final String password;

  CreateAccount({required this.email, required this.password});
}

class LoginWithEmailAndPassword extends AuthEvent {
  final String email;
  final String password;

  LoginWithEmailAndPassword({required this.email, required this.password});
}
