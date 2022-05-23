import 'package:recase/recase.dart';
import '../../../../../utils/directory.dart';
import '../../../../sample.dart';

class BaseService extends Sample {
  final String dirName;
  BaseService(
    String path,
    this.dirName,
  ) : super(path);

  String get serviceName {
    final screenName = '$dirName' 'service';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'base_service.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/' 'service/base_service.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/' 'service/base' '_service.dart');
  }

  // ignore: unused_element
  String get _content => '''
import './dio_service.dart';

class BaseService {
  DioService dioService = DioService.instance;
}
''';
}
