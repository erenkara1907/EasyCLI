import 'package:recase/recase.dart';
import '../../../../../utils/directory.dart';
import '../../../../sample.dart';

class BaseViewModel extends Sample {
  final String dirName;
  BaseViewModel(
    String path,
    this.dirName,
  ) : super(path);

  String get viewmodelName {
    final screenName = '$dirName' 'viewmodel';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'base_viewmodel.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/' 'viewmodel/base_viewmodel.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/' 'viewmodel/base' '_viewmodel.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:flutter/material.dart';

abstract class BaseViewModel {
  BuildContext? context;
  void setContext(BuildContext context);
}
''';
}
