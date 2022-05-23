import 'package:recase/recase.dart';
import '../../../../utils/directory.dart';
import '../../../sample.dart';

class AppRegex extends Sample {
  final String dirName;
  AppRegex(
    String path,
    this.dirName,
  ) : super(path);

  String get constantName {
    final screenName = '$dirName' 'constant';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'app_regex.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'constants/app_regex.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'constants/app_regex.dart');
  }

  String get emailRegex =>  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  String get passwordRegex =>  r'^.{6,}$';
  String get usernameRegex =>  r'^.{4,}$';

  // ignore: unused_element
  String get _content => '''
class AppRegex {
  static AppRegex? _instance;
  static AppRegex get instance {
    _instance ??= AppRegex._init();
    return _instance!;
  }

  AppRegex._init();

  final String emailRegex = $emailRegex;
  final String passwordRegex = $passwordRegex;
  final String usernameRegex = $usernameRegex;
}
''';
}
