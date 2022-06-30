import '../../../../../utils/directory.dart';
import '../../../../sample.dart';

class EnUsTranslation extends Sample {
  final String dirName;
  EnUsTranslation(
    String path,
    this.dirName,
  ) : super(path);

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'en_us_translation.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'config/en_US/en_us_translation.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'config/en_US/en_us_translation.dart');
  }

  // ignore: unused_element
  String get _content => '''
import '../app_strings.dart';

const Map<String, String> enUs = {
  Strings.hello : 'Hello!',
  Strings.loading : 'Loading',

  Strings.changeTheme : 'Change theme',
  Strings.changeLanguage : 'Change language',

  Strings.noInternetConnection : 'No internet connection!',
  Strings.serverNotResponding : 'Server is not responding!',
  Strings.someThingWentWorng : 'Something went wrong',
  Strings.apiNotFound : 'Route not found!',
  Strings.serverError : 'Server error',

};
''';
}
