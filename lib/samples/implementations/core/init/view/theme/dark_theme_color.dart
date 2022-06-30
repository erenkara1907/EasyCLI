import '../../../../../../utils/directory.dart';
import '../../../../../sample.dart';

class DarkThemeColor extends Sample {
  final String dirName;
  DarkThemeColor(
    String path,
    this.dirName,
  ) : super(path);

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'dark_theme_color.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'theme/dark_theme_color.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'theme/dark_theme_color.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DarkThemeColors
{
  // Dark swatch
  static const Color primaryColor = Colors.orange;
  static Color accentColor = Colors.blueAccent;

  // Appbar
  static const Color appbarColor = Colors.black;

  // Scaffold
  static const Color scaffoldBackgroundColor = Color(0xff171d2d);
  static const Color backgroundColor = Color(0xff171d2d);
  static const Color dividerColor = Color(0xff686868);
  static const Color cardColor = Color(0xff1e2336);

  // Icons
  static const Color appBarIconsColor = Colors.white;
  static const Color iconColor = primaryColor;

  // Button
  static const Color buttonColor = primaryColor;
  static const Color buttonTextColor = Colors.black;
  static const Color buttonDisabledColor = Colors.grey;
  static const Color buttonDisabledTextColor = Colors.black;

  // Text
  static const Color bodyTextColor = Colors.white70;
  static const Color headlinesTextColor = primaryColor;
  static const Color captionTextColor = Colors.grey;
  static const Color hintTextColor = Color(0xff686868);

  // Chip
  static const Color chipBackground = primaryColor;
  static const Color chipTextColor = Colors.black87;

  // Progress bar indicator
  static const Color progressIndicatorColor = Color(0xFF40A76A);
}
''';
}
