import 'package:recase/recase.dart';
import '../../../utils/directory.dart';
import '../../sample.dart';

class Language extends Sample {
  final String dirName;
  Language(
    String path,
    this.dirName,
  ) : super(path);

  String get import => '''import 'package:flutter/material.dart';''';

  String get languageName {
    final screenName = '$dirName' 'language';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'base_language.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'language/base_language.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'language/base' '_language.dart');
  }

  // ignore: unused_element
  String get _content => '''$import
class $languageName {
  static $languageName? _instance;
  static $languageName get instance {
    _instance ??= $languageName._init();
    return _instance!;
  }

  $languageName._init();

  final enLocale = const Locale('en', 'US');
  List<Locale> get supportedLocales =>  [enLocale];
}
''';
}
