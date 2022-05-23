import 'package:recase/recase.dart';

import '../../../../../utils/directory.dart';
import '../../../../sample.dart';

class CacheManager extends Sample {
  final String dirName;
  CacheManager(
    String path,
    this.dirName,
  ) : super(path);

  String get import => '''import 'package:get_storage/get_storage.dart';''';

  String get cacheManagerName {
    final screenName = '$dirName' 'cache_manager';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'cache_manager.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/manager/' 'cache/cache_manager.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/manager/' 'cache/cache_manager.dart');
  }

  // ignore: unused_element
  String get _content => '''$import
enum CacheManagerKey { TOKEN }

class CacheManager {
  GetStorage storage = GetStorage();

  Future<bool> saveToken(String token) async {
    await storage.write(CacheManagerKey.TOKEN.toString(), token);
    return true;
  }

  String getToken() {
    String token = storage.read(CacheManagerKey.TOKEN.toString());
    return token;
  }

  Future<void> removeToken() async {
    await storage.remove(CacheManagerKey.TOKEN.toString());
  }
}
''';
}
