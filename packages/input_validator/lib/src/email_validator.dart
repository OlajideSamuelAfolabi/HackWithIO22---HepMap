import 'package:form_inputs/src/enums.dart';
import 'package:formz/formz.dart';

class Email extends FormzInput<String, EmailValidationError> {
  Email.dirty([String value = '']) : super.dirty(value);
  Email.pure() : super.dirty('');

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidationError? validator(String? value) {
    return _emailRegExp.hasMatch(value ?? '')
        ? null
        : EmailValidationError.invalid;
  }
}
