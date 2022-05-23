import 'package:path/path.dart';
import 'package:recase/recase.dart';
import '../../../../utils/directory.dart';
import '../../../sample.dart';

class ProductService extends Sample {
  final String dirName;
  ProductService(
    String path,
    this.dirName,
  ) : super(path);

  String get serviceName {
    final screenName = '$dirName' 'Service';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  String get import => '''import '../model/$dirname'_'model.dart';;
''';

  @override
  String get exportContent => '''export '$dirName'_'service.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/product/' 'service/$dirName' '_' 'service.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/product/' 'service/$dirName' '_' 'service.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:shoppi_app/core/service/shoppi_dio_service.dart';
import '../../../core/service/base_service.dart';
$import

class $dirName extends BaseService {
  // Future<List<Product>> fetchProducts() async {
  //   final response = await service.make<Product>(serviceConstants.product,
  //       parserModel: Product(), method: MethodType.GET);
  //   return response;
  // }

    // Future postProduct(ProductModel product) async {
  //   final response = await service.make(serviceConstants.product,
  //       parserModel: ProductModel(), data: product, method: MethodType.POST);
  //   return response;
  // }
}
''';
}
