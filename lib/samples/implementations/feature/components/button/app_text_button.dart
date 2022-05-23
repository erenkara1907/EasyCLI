import 'package:recase/recase.dart';
import '../../../../../../../utils/directory.dart';
import '../../../../sample.dart';

class AppTextButton extends Sample {
  final String dirName;
  AppTextButton(
    String path,
    this.dirName,
  ) : super(path);

  String get serviceName {
    final screenName = '$dirName' 'Component';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export '$dirName'_'component.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/feature/components/' 'button/$dirName''_''component.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/feature/components/' 'button/$dirName''_''component.dart');
  }

  // ignore: unused_element
  String get _content => '''
import '../../../core/init/view/base/base_stateless.dart';
import 'package:flutter/material.dart';

class $dirName extends BaseStateless {
  final double width;
  final double height;
  final void Function() onPressed;
  final String text;
  final TextStyle? textStyle;

  // ignore: use_key_in_widget_constructors
  $dirName({
    required this.width,
    required this.height,
    required this.onPressed,
    required this.text,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle ??
              currentTextTheme(context).subtitle2!.copyWith(
                    color: currentTheme(context).primaryColor,
                  ),
        ),
      ),
    );
  }
}
''';
}
