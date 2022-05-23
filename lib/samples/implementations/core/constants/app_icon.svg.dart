import 'package:recase/recase.dart';
import '../../../../utils/directory.dart';
import '../../../sample.dart';

class AppIconSvg extends Sample {
  final String dirName;
  AppIconSvg(
    String path,
    this.dirName,
  ) : super(path);

  String get constantName {
    final screenName = '$dirName' 'constant';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'app_icon.svg.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'constants/app_icon.svg.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'constants/app_icon.svg.dart');
  }

  String asset = 'assets/icon/social/icon_social';

  // ignore: unused_element
  String get _content => '''
String asset = 'assets/icon/social/icon_social';

class AppIconSvg {
  static AppIconSvg? _instance;
  static AppIconSvg get instance {
    _instance ??= AppIconSvg._init();
    return _instance!;
  }

  AppIconSvg._init();

  String svgFacebookIcon = '$asset' '_' 'facebook.svg';
  String svgGoogleIcon = '$asset' '_' 'google.svg';
  String svgInstagramIcon = '$asset' '_' 'instagram.svg';
  String svgMessengerIcon = '$asset' '_' 'messenger.svg';
  String svgPinterestIcon = '$asset' '_' 'pinterest.svg';
  String svgTwitterIcon = '$asset' '_' 'twitter.svg';
}
''';
}
