class AppRegex {
  static bool isEmailValid(String email) {
    return RegExp(
      r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
    ).hasMatch(email);
  }

  static bool isPasswordValid(
    String password, {
    int minLength = 8,
    bool requireUppercase = true,
    bool requireLowercase = true,
    bool requireNumber = true,
    bool requireSpecialChar = true,
    String specialChars = r"#@$!%*?&",
  }) {
    String pattern = r"^";

    if (requireLowercase) {
      pattern += r"(?=.*[a-z])";
    }
    if (requireUppercase) {
      pattern += r"(?=.*[A-Z])";
    }
    if (requireNumber) {
      pattern += r"(?=.*\d)";
    }
    if (requireSpecialChar) {
      pattern += "(?=.*[$specialChars])";
    }

    pattern += "[A-Za-z0-9$specialChars]{$minLength,}\$";

    return RegExp(pattern).hasMatch(password);
  }

  static bool isPhoneNumberValid(String phoneNumber) {
    // Remove spaces and special characters
    final cleanPhone = phoneNumber.replaceAll(RegExp(r'[\s\-\(\)]'), '');

    // Pattern for international format: +20 then (10|11|12|15) then 8 digits
    final internationalPattern = RegExp(r'^\+20(10|11|12|15)\d{8}$');

    // Pattern for local format: 0 then (10|11|12|15) then 8 digits
    final localPattern = RegExp(r'^0(10|11|12|15)\d{8}$');

    // Pattern for local without leading zero: (10|11|12|15) then 8 digits
    final localNoZeroPattern = RegExp(r'^(10|11|12|15)\d{8}$');

    return internationalPattern.hasMatch(cleanPhone) ||
        localPattern.hasMatch(cleanPhone) ||
        localNoZeroPattern.hasMatch(cleanPhone);
  }

  static bool hasLowerCase(String password) {
    return RegExp(r'^(?=.*[a-z])').hasMatch(password);
  }

  static bool hasUpperCase(String password) {
    return RegExp(r'^(?=.*[A-Z])').hasMatch(password);
  }

  static bool hasNumber(String password) {
    return RegExp(r'^(?=.*?[0-9])').hasMatch(password);
  }

  static bool hasSpecialCharacter(String password) {
    return RegExp(r'^(?=.*?[#?!@$%^&*-])').hasMatch(password);
  }

  static bool hasMinLength(String password) {
    return RegExp(r'^(?=.{8,})').hasMatch(password);
  }
}
