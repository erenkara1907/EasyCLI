import 'package:recase/recase.dart';

import '../../../utils/directory.dart';
import '../../sample.dart';

class Extension extends Sample {
  final String dirName;
  Extension(
    String path,
    this.dirName,
  ) : super(path);

  String get import => '''import 'package:flutter/material.dart';''';

  String get extensionName {
    final screenName = '$dirName' 'extension';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'base_extension.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'extension/base_extension.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'extension/base''_''extension.dart');
  }

  // ignore: unused_element
  String get _content => '''
import './constants/app_regex.dart';

extension StringValidator on String {
  String? get isValidEmail {
    return RegExp(AppRegex.instance.emailRegex).hasMatch(this)
        ? null
        : 'Email address is not match';
  }

    String? get isValidUsername {
    return RegExp(AppRegex.instance.usernameRegex).hasMatch(this)
        ? null
        : 'Username is not match';
  }

    String? get isValidPassword {
    return RegExp(AppRegex.instance.passwordRegex).hasMatch(this)
        ? null
        : 'Password is not match';
  }
}
''';
}