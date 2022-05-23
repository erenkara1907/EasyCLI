import 'package:recase/recase.dart';
import '../../../../../utils/directory.dart';
import '../../../../sample.dart';

class AuthManager extends Sample {
  final String dirName;
  AuthManager(
    String path,
    this.dirName,
  ) : super(path);

  String get import => '''import '../cache/cache_manager.dart';''';

  String get authManagerName {
    final screenName = '$dirName' 'auth_manager';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'auth_manager.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/manager/' 'auth/auth_manager.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/manager/' 'auth/auth_manager.dart');
  }

  // ignore: unused_element
  String get _content => '''$import
class AuthManager with CacheManager {
  
  String token = '';
  bool isLogged = false;

  logOut() {
    isLogged = false;
    removeToken();
  }

  Future<void> login(String token) async {
    isLogged = true;
    await saveToken(token);
  }

  String getTheToken() {
    token = getToken();
    return token; 
  }

  Future<void> checkUserStatus() async {
    token = getToken();
    // ignore: unnecessary_null_comparison
    token != null ? isLogged = true : isLogged = false;
  }
}
''';
}
