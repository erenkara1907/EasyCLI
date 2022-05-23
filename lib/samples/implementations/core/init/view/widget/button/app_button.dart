import 'package:recase/recase.dart';
import '../../../../../../../utils/directory.dart';
import '../../../../../../sample.dart';

class AppButton extends Sample {
  final String dirName;
  AppButton(
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
  String get exportContent => '''export 'app_button.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'widget/app_button_export.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'widget/app' '_button.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:flutter/material.dart';
import '../base/base_stateless.dart';

class AppButton extends BaseStateless {
  final double width;
  final double height;
  final String text;
  final double borderRadiusAll;
  final double borderWidth;
  final Color? borderColor;
  final void Function()? onTap;
  final bool isIcon;
  final Widget? icon;
  final Color? buttonColor;
  final double elevation;
  final TextStyle? textStyle;

  // ignore: use_key_in_widget_constructors
  AppButton({
    this.width = 100.0,
    this.height = 50.0,
    this.text = 'Ron Button',
    this.borderRadiusAll = 6.0,
    this.borderWidth = 1.0,
    this.borderColor,
    this.onTap,
    this.isIcon = false,
    this.icon,
    this.buttonColor,
    this.elevation = 0.0,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      borderRadius: BorderRadius.circular(borderRadiusAll),
      child: SizedBox(
        width: width,
        height: height,
        child: isIcon
            ? ElevatedButton.icon(
                style: appButtonStyle(context),
                onPressed: onTap ?? () {},
                icon: icon ?? appIcon.iconDownload(),
                label: Text(text,
                    style: textStyle ?? currentTextTheme(context).headline6),
              )
            : ElevatedButton(
                style: appButtonStyle(context),
                onPressed: onTap ?? () {},
                child: Text(
                  text,
                  style: textStyle ?? currentTextTheme(context).headline6,
                ),
              ),
      ),
    );
  }

  ButtonStyle appButtonStyle(BuildContext context) => ElevatedButton.styleFrom(
        primary: buttonColor ?? currentTheme(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadiusAll)),
          side: BorderSide(
              width: borderWidth,
              color: borderColor ?? currentTheme(context).focusColor),
        ),
      );
}
''';
}
