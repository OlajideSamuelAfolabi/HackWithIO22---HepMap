import 'package:form_inputs/src/enums.dart';
import 'package:formz/formz.dart';

class Password extends FormzInput<String, PasswordValidationError> {
  Password.dirty([String value = '']) : super.dirty(value);
  Password.pure() : super.dirty('');

  static final RegExp _passwordRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  PasswordValidationError? validator(String? value) {
    return _passwordRegExp.hasMatch(value ?? '')
        ? null
        : PasswordValidationError.invalid;
  }
}
