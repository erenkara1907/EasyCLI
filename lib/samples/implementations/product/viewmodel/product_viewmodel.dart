import 'package:recase/recase.dart';
import '../../../../utils/directory.dart';
import '../../../sample.dart';

class ProductViewmodel extends Sample {
  final String dirName;
  ProductViewmodel(
    String path,
    this.dirName,
  ) : super(path);

  String get modelName {
    final screenName = '$dirName' 'ViewModel';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export '$dirName'_'viewmodel.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/product/' 'viewmodel/$dirName' '_' 'viewmodel.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/product/' 'viewmodel/$dirName' '_' 'viewmodel.dart');
  }

  // ignore: unused_element
  String get _content => '''
import '../../../core/viewmodel/base_view_model.dart';

class $dirName extends BaseViewModel {
 // Some code
}
''';
}