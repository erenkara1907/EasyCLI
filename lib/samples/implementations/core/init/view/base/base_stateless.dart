import 'package:recase/recase.dart';
import '../../../../../../utils/directory.dart';
import '../../../../../sample.dart';

class BaseStateless extends Sample {
  final String dirName;
  BaseStateless(
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
  String get exportContent => '''export 'base_stateless.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'base/base_stateless.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'base/base' '_stateless.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:flutter/material.dart';
import '../../../constants/app_icon.dart';
import '../../../constants/app_icon.svg.dart';

// ignore: use_key_in_widget_constructors
abstract class BaseStateless extends StatelessWidget {
  ThemeData currentTheme(BuildContext context) => Theme.of(context);
  TextTheme currentTextTheme(BuildContext context) =>
      Theme.of(context).textTheme;

  AppIcon get appIcon => AppIcon.instance;
  AppIconSvg get appIconSvg => AppIconSvg.instance;

  double dynamicHeight({required BuildContext context, required double val}) {
    return MediaQuery.of(context).size.height * val;
  }

  double dynamicWidth({required BuildContext context, required double val}) {
    return MediaQuery.of(context).size.width * val;
  }

  SizedBox spacer(double height, double width) =>
      SizedBox(height: height, width: width);

  EdgeInsets insetsAll(double val, BuildContext context) =>
      EdgeInsets.all(dynamicHeight(context: context, val: val));
  EdgeInsets insetsHorizontal(double val, BuildContext context) =>
      EdgeInsets.symmetric(
          horizontal: dynamicHeight(context: context, val: val));
  EdgeInsets insetsVertical(double val, BuildContext context) =>
      EdgeInsets.symmetric(vertical: dynamicHeight(context: context, val: val));
}
''';
}
