import 'package:path/path.dart';
import 'package:recase/recase.dart';
import '../../../../utils/directory.dart';
import '../../../sample.dart';

class ProductStatelessView extends Sample {
  final String dirName;
  ProductStatelessView(
    String path,
    this.dirName,
  ) : super(path);

  String get modelName {
    final screenName = '$dirName' 'StatelessView';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export '$dirName'_'stateless_view.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/product/' 'view/$dirName' '_' 'stateless_view.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/product/' 'view/$dirName' '_' 'stateless_view.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:flutter/material.dart';
import '../../../core/view/base/base_stateless.dart';

class $dirName extends BaseStateless {
@override
Widget build(BuildContext context) {
return Scaffold();
}
}
''';
}