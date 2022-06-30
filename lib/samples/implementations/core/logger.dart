import '../../../utils/directory.dart';
import '../../sample.dart';

class AppLogger extends Sample {
  final String dirName;
  AppLogger(
    String path,
    this.dirName,
  ) : super(path);

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'logger.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'logger.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'logger.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:logger/logger.dart';

final logger = new Logger(
    printer: PrettyPrinter(
      methodCount: 1,
      lineLength: 50,
      errorMethodCount: 3,
      colors: true,
      printEmojis: true
    ),
  );
''';
}
