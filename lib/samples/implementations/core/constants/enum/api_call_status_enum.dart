import '../../../../../utils/directory.dart';
import '../../../../sample.dart';

class ApiCallStatusEnum extends Sample {
  final String dirName;
  ApiCallStatusEnum(
    String path,
    this.dirName,
  ) : super(path);

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'api_call_status_enum.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'constants/enum/api_call_status_enum.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'constants/enum/api' '_call_status_enum.dart');
  }

  // ignore: unused_element
  String get _content => '''
enum ApiCallStatusEnum {
  loading,
  success,
  error,
  empty,
  holding,
  cache,
  refresh,
}
''';
}
