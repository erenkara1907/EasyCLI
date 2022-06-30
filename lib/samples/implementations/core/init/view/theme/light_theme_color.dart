import '../../../../../../utils/directory.dart';
import '../../../../../sample.dart';

class LightThemeColor extends Sample {
  final String dirName;
  LightThemeColor(
    String path,
    this.dirName,
  ) : super(path);

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'light_theme_color.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'theme/light_theme_color.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'theme/light_theme_color.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LightThemeColors
{
  // Dark swatch
  static const Color primaryColor = Color(0xFF40A76A);
  static const Color accentColor = Color(0xFFD9EDE1);

  // AppBar
  static const Color appBarColor = primaryColor;

  // Scaffold
  static const Color scaffoldBackgroundColor = Colors.white;
  static const Color backgroundColor = Colors.white;
  static const Color dividerColor = Color(0xff686868);
  static const Color cardColor = Color(0xfffafafa);

  // Icons
  static const Color appBarIconsColor = Colors.white;
  static const Color iconColor = Colors.black;

  // Button
  static const Color buttonColor = primaryColor;
  static const Color buttonTextColor = Colors.white;
  static const Color buttonDisabledColor = Colors.grey;
  static const Color buttonDisabledTextColor = Colors.black;

  // Text
  static const Color bodyTextColor = Colors.black;
  static const Color headlinesTextColor = Colors.black;
  static const Color captionTextColor = Colors.grey;
  static const Color hintTextColor =  Color(0xff686868);

  // Chip
  static const Color chipBackground = primaryColor;
  static const Color chipTextColor = Colors.white;

  // Progress bar indicator
  static const Color progressIndicatorColor = Color(0xFF40A76A);
}
''';
}
