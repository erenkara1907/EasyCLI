import 'package:recase/recase.dart';
import '../../../../../../../utils/directory.dart';
import '../../../../../../sample.dart';

class AppSlider extends Sample {
  final String dirName;
  AppSlider(
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
  String get exportContent => '''export 'app_slider.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'widget/app_slider_export.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'widget/app' '_slider.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:flutter/material.dart';
import '../base/base_stateless.dart';

class AppSlider extends BaseStateless {
  final double max;
  final double min;
  final int divisions;
  final double value;
  final void Function(double)? onChanged;
  final Color? activeColor;
  final Color? inactiveColor;

  // ignore: use_key_in_widget_constructors
  AppSlider({
    this.max = 24.0,
    this.min = 0.0,
    this.divisions = 24,
    this.value = 0.0,
    this.onChanged,
    this.activeColor,
    this.inactiveColor,
  });

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      onChanged: onChanged ?? (_){},
      max: max,
      min: min,
      activeColor: activeColor ?? currentTheme(context).primaryColor,
      inactiveColor: inactiveColor ?? currentTheme(context).primaryColor.withOpacity(0.3),
    );
  }
}
''';
}
