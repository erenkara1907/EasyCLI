import '../cache/cache_manager.dart';
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
