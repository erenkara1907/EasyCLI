import '../../../../utils/directory.dart';
import '../../../sample.dart';

class AppStrings extends Sample {
  final String dirName;
  AppStrings(
    String path,
    this.dirName,
  ) : super(path);

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'app_strings.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'config/app_strings.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'config/app_strings.dart');
  }

  // ignore: unused_element
  String get _content => '''
class AppStrings {
  static const String hello = 'hello';
  static const String loading = 'loading';


  static const String changeTheme = 'change_theme';
  static const String changeLanguage = 'change_language';


  static const String noInternetConnection = 'no internet connection';
  static const String serverNotResponding = 'server not responding';
  static const String someThingWentWorng = 'something went wrong';
  static const String apiNotFound = 'api not found';
  static const String serverError = 'Server error';
}
''';
}
