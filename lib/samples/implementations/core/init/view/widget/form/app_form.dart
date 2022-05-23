import 'package:recase/recase.dart';
import '../../../../../../../utils/directory.dart';
import '../../../../../../sample.dart';

class AppForm extends Sample {
  final String dirName;
  AppForm(
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
  String get exportContent => '''export 'app_form.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'widget/app_form_export.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'widget/app' '_form.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:flutter/material.dart';
import '../base/base_stateless.dart';

class AppForm extends BaseStateless {
  final double width;
  final double height;
  final Key? globalKey;
  final List<Widget>? textFormFields;
  final bool isColumn;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;

  // ignore: use_key_in_widget_constructors
  AppForm({
    this.width = 100.0,
    this.height = 50.0,
    this.globalKey,
    this.textFormFields,
    this.isColumn = true,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.min,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Form(
        key: globalKey ?? GlobalKey(),
        child: isColumn
            ? Column(
                mainAxisAlignment: mainAxisAlignment,
                crossAxisAlignment: crossAxisAlignment,
                mainAxisSize: mainAxisSize,
                children: textFormFields ?? [],
              )
            : Row(
                mainAxisAlignment: mainAxisAlignment,
                crossAxisAlignment: crossAxisAlignment,
                mainAxisSize: mainAxisSize,
                children: textFormFields ?? [],
              ),
      ),
    );
  }
}
''';
}
