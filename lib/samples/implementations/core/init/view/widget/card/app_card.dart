import 'package:recase/recase.dart';
import '../../../../../../../utils/directory.dart';
import '../../../../../../sample.dart';

class AppCard extends Sample {
  final String dirName;
  AppCard(
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
  String get exportContent => '''export 'app_card.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'widget/app_card_export.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'widget/app' '_card.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:flutter/material.dart';
import '../base/base_stateless.dart';

class AppCard extends BaseStateless {
  final double width;
  final double height;
  final double elevation;
  final double borderRadiusAll;
  final double borderWidth;
  final Color? borderColor;
  final Color? cardColor;
  final bool isColumn;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;
  final List<Widget>? children;

  // ignore: use_key_in_widget_constructors
  AppCard({
    this.width = 100.0,
    this.height = 50.0,
    this.elevation = 0.0,
    this.borderRadiusAll = 6.0,
    this.borderWidth = 1.0,
    this.borderColor,
    this.cardColor,
    this.isColumn = true,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.min,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      borderRadius: BorderRadius.circular(borderRadiusAll),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: cardColor ?? currentTheme(context).primaryColor,
            borderRadius: BorderRadius.circular(borderRadiusAll),
            border: Border.all(
                width: borderWidth,
                color: borderColor ?? currentTheme(context).focusColor)),
        child: isColumn
            ? Column(
                mainAxisAlignment: mainAxisAlignment,
                crossAxisAlignment: crossAxisAlignment,
                mainAxisSize: mainAxisSize,
                children: children ?? [],
              )
            : Row(
                mainAxisAlignment: mainAxisAlignment,
                crossAxisAlignment: crossAxisAlignment,
                mainAxisSize: mainAxisSize,
                children: children ?? [],
              ),
      ),
    );
  }
}
''';
}
