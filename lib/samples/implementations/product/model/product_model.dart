import 'package:recase/recase.dart';
import '../../../../utils/directory.dart';
import '../../../sample.dart';

class ProductModel extends Sample {
  final String dirName;
  ProductModel(
    String path,
    this.dirName,
  ) : super(path);

  String get modelName {
    final screenName = '$dirName' 'Model';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export '$dirName'_'model.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/product/' 'model/$dirName' '_' 'model.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/product/' 'model/$dirName' '_' 'model.dart');
  }

  // ignore: unused_element
  String get _content => '''
import '../../../core/model/base_model.dart';

// class $dirName extends BaseModel<$dirName> {
//   double? weight;
//   String? sId;
//   String? image;
//   double? price;
//   String? title;
//   double? total;

//   $dirName(
//       {this.weight, this.sId, this.image, this.price, this.title, this.total});

//   $dirName.fromJson(Map<dynamic, dynamic> json) {
//     weight = json['weight'].toDouble();
//     sId = json['_id'];
//     image = json['image'];
//     price = json['price'].toDouble();
//     title = json['title'];
//     total = json['total'].toDouble() ?? 5;
//   }

//   @override
//   Map<String, dynamic> toJson() {
//     // ignore: prefer_collection_literals
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['weight'] = weight;
//     data['image'] = image;
//     data['price'] = price;
//     data['title'] = title;
//     data['total'] = total;
//     data['sId'] = sId;
//     return data;
//   }

//   @override
//   $dirName fromJson(Map<dynamic, dynamic> json) =>
//       ProductModel.fromJson(json);
// }
''';
}
