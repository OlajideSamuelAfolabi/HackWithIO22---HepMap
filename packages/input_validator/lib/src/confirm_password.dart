import 'package:formz/formz.dart';

import 'enums.dart';

class ConfirmPassword
    extends FormzInput<String, ConfirmPasswordValidationError> {
  const ConfirmPassword.pure({this.password = ''}) : super.pure('');
  const ConfirmPassword.dirty({String value = '', required this.password})
      : super.dirty(value);
  final String password;

  @override
  ConfirmPasswordValidationError? validator(String? value) {
    return password == value ? null : ConfirmPasswordValidationError.invalid;
  }
}
