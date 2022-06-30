import 'package:get_storage/get_storage.dart';
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
