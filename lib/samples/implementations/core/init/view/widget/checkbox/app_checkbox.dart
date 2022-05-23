import 'package:recase/recase.dart';
import '../../../../../../../utils/directory.dart';
import '../../../../../../sample.dart';

class AppCheckbox extends Sample {
  final String dirName;
  AppCheckbox(
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
  String get exportContent => '''export 'app_checkbox.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'widget/app_checkbox_export.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'widget/app' '_checkbox.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:flutter/material.dart';
import '../base/base_stateless.dart';

class AppCheckbox extends BaseStateless {
  final double width;
  final double height;
  final void Function(bool?)? onChanged;
  final bool value;
  final Color? checkColor;
  final MaterialStateProperty<Color?>? fillColor;
  final double elevation;

  // ignore: use_key_in_widget_constructors
  AppCheckbox({
    this.width = 35.0,
    this.height = 35.0,
    this.onChanged,
    this.value = true,
    this.checkColor,
    this.fillColor,
    this.elevation = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      child: SizedBox(
        width: width,
        height: height,
        child: Checkbox(
          value: value,
          onChanged: onChanged ?? (_) {},
          checkColor: checkColor ?? currentTheme(context).backgroundColor,
          fillColor: fillColor ??
              MaterialStateProperty.all(currentTheme(context).primaryColor),
        ),
      ),
    );
  }
}
''';
}
