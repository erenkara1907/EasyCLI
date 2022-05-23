import 'package:recase/recase.dart';
import '../../../utils/directory.dart';
import '../../sample.dart';

class Model extends Sample {
  final String dirName;
  Model(
    String path,
    this.dirName,
  ) : super(path);

  String get import => '''import 'package:flutter/material.dart';''';

  String get modelName {
    final screenName = '$dirName' 'model';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'base_model.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'model/base_model.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'model/base' '_model.dart');
  }

  // ignore: unused_element
  String get _content => '''$import
abstract class BaseModel<T> {
  Map<dynamic, dynamic> toJson();
  T fromJson(Map<dynamic, dynamic> json);
}
''';
}
