import '../../../../../utils/directory.dart';
import '../../../../sample.dart';

class SharedPref extends Sample {
  final String dirName;
  SharedPref(
    String path,
    this.dirName,
  ) : super(path);

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'shared_pref.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/manager/' 'cache/shared_pref.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/manager/' 'cache/shared_pref.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import '../../config/app_localization_service.dart';

class SharedPref {
  // get storage
  static late final _storage;

  // STORING KEYS
  static const String _currentLocalKey = 'current_local';
  static const String _lightThemeKey = 'is_theme_light';

  /// init get storage services
  static init() async {
    await GetStorage.init();
    _storage = GetStorage();
  }

  /// set theme current type as light theme
  static void setThemeIsLight(bool lightTheme) =>
    _storage.write(_lightThemeKey, lightTheme);

  /// get if the current theme type is light
  static bool getThemeIsLight() =>
     _storage.read(_lightThemeKey) ?? true;

  /// save current locale
  static void setCurrentLanguage(String languageCode) =>
    _storage.write(_currentLocalKey, languageCode);

  /// get current locale
  static Locale getCurrentLocal(){
      String? langCode = _storage.read(_currentLocalKey);
      // default language is english
      if(langCode == null){
        return LocalizationService.defaultLanguage;
      }
      return LocalizationService.supportedLanguages[langCode]!;
  }
}
''';
}
