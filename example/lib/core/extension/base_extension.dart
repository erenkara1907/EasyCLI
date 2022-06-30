import '../constants/app_regex.dart';

extension StringValidator on String {
  String? get isValidEmail {
    return RegExp(AppRegex.instance.emailRegex).hasMatch(this)
        ? null
        : 'Email address is not match';
  }

    String? get isValidUsername {
    return RegExp(AppRegex.instance.usernameRegex).hasMatch(this)
        ? null
        : 'Username is not match';
  }

    String? get isValidPassword {
    return RegExp(AppRegex.instance.passwordRegex).hasMatch(this)
        ? null
        : 'Password is not match';
  }
}
