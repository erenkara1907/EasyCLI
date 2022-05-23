import 'package:recase/recase.dart';
import '../../../../../../utils/directory.dart';
import '../../../../../sample.dart';

class BaseState extends Sample {
  final String dirName;
  BaseState(
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
  String get exportContent => '''export 'base_state.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'base/base_state.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'base/base' '_state.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:flutter/material.dart';
import '../../../constants/app_icon.dart';
import '../../../constants/app_icon.svg.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ThemeData get currentTheme => Theme.of(context);
  TextTheme get currentTextTheme => Theme.of(context).textTheme;

  AppIcon get appIcon => AppIcon.instance;
  AppIconSvg get appIconSvg => AppIconSvg.instance;

  double dynamicHeight(double val) => MediaQuery.of(context).size.height * val;
  double dynamicWidth(double val) => MediaQuery.of(context).size.width * val;

  SizedBox spacer(double height, double width) =>
      SizedBox(width: width, height: height);

  EdgeInsets insetsAll(double val) => EdgeInsets.all(dynamicHeight(val));
  EdgeInsets insetsHorizontal(double val) =>
      EdgeInsets.symmetric(horizontal: dynamicHeight(val));
  EdgeInsets insetsVertical(double val) =>
      EdgeInsets.symmetric(vertical: dynamicHeight(val));
}
''';
}
