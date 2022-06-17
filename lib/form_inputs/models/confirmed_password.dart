import 'package:formz/formz.dart';

/// Validation errors for the [Password] [FormzInput].
enum ConfirmedPasswordValidationError {
  invalid,
  mismatch,
}

/// {@template password}
/// Form input for an password input.
/// {@endtemplate}
class ConfirmedPassword extends FormzInput<String, ConfirmedPasswordValidationError> {
  final String password;
  const ConfirmedPassword.pure({
    this.password = ''
  }) : super.pure('');

  const ConfirmedPassword.dirty({
    required this.password,
    String value = '',
  }) : super.dirty(value);

  @override
  ConfirmedPasswordValidationError? validator(String? value) {
    return password == value
        ? null
        : ConfirmedPasswordValidationError.mismatch;
  }
}