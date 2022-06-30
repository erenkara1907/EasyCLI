class AppRegex {
  static AppRegex? _instance;
  static AppRegex get instance {
    _instance ??= AppRegex._init();
    return _instance!;
  }

  AppRegex._init();

  // Remove the  sign before the $ sign.

  final String emailRegex = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+";
  final String passwordRegex = r'^.{6,}$';
  final String usernameRegex = r'^.{4,}$';
}
