import 'package:path/path.dart';
import 'package:recase/recase.dart';
import '../../../../utils/directory.dart';
import '../../../sample.dart';

class ProductStateView extends Sample {
  final String dirName;
  ProductStateView(
    String path,
    this.dirName,
  ) : super(path);

  String get modelName {
    final screenName = '$dirName' 'View';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export '$dirName'_'view.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/product/' 'view/$dirName' '_' 'view.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/product/' 'view/$dirName' '_' 'view.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:flutter/material.dart';
import '../../../core/view/base/base_state.dart';

class $dirname extends StatefulWidget {
@override
_$dirname''State createState() => _$dirname''State();
}
class _$dirname''State extends BaseState<$dirname> {
@override
Widget build(BuildContext context) {
return Scaffold();
}
}
''';
}