class BaseInputValidator {
  final bool isFieldRequired;

  String get fieldName => 'name';

  BaseInputValidator({
    this.isFieldRequired = true,
  });

  String? validate(String value) {
    final isEmpty = value.trim().isEmpty;
    if (isEmpty && isFieldRequired) {
      return 'Field $fieldName is required';
    }
    return null;
  }
}

abstract class BaseLogicValidation {
  static const minTaskDurationInSeconds = 60;
  static const maxTaskDurationInHours = 24;
  static const taskWarningDurationInHours = 16;
  static const emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static const fileFormatPattern = r'^.*\.[a-zA-Z0-9]{1,7}$';
}

class EmailInputValidator extends BaseInputValidator {
  EmailInputValidator({
    super.isFieldRequired,
  });

  @override
  String get fieldName => 'email';

  @override
  String? validate(String value) {
    var result = super.validate(value);
    if (result == null) {
      final trimmedValue = value.trim();
      final regExp = RegExp(BaseLogicValidation.emailPattern);
      if (trimmedValue.length < 6 && isFieldRequired) {
        result = 'minimum 6 characters required';
      } else if (trimmedValue.isNotEmpty && !regExp.hasMatch(trimmedValue)) {
        result = 'invalid email address';
      } else if (trimmedValue.length > 50) {
        result = 'maximum 50 characters allowed';
      }
    }
    return result;
  }
}

class PasswordInputValidator extends BaseInputValidator {
  PasswordInputValidator({
    super.isFieldRequired,
  });

  @override
  String get fieldName => 'password';

  @override
  String? validate(String value) {
    var result = super.validate(value);
    if (result == null) {
      // final trimmedValue = value.trim();
      // final regex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*#?&]{6,}$');
      // if (trimmedValue.isNotEmpty && !regex.hasMatch(value)) {
      //   result = localization.passwordMustContains;
      // } else
      if (value.length > 20) {
        result = 'maximum 20 characters allowed';
      }
    }
    return result;
  }
}

class UsernameInputValidator extends BaseInputValidator {
  UsernameInputValidator({
    super.isFieldRequired,
  });

  @override
  String get fieldName => 'username';

  @override
  String? validate(String value) {
    var result = super.validate(value);
    if (result == null) {
      final trimmedValue = value.trim();
      if (trimmedValue.isNotEmpty && trimmedValue.length > 50) {
        result = 'maximum 20 characters allowed';
      }
    }
    return result;
  }
}
