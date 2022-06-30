import '../../../../../utils/directory.dart';
import '../../../../sample.dart';

class TrTrTranslation extends Sample {
  final String dirName;
  TrTrTranslation(
    String path,
    this.dirName,
  ) : super(path);

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'tr_tr_translation.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'config/tr_TR/tr_tr_translation.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/' 'config/tr_TR/tr_tr_translation.dart');
  }

  // ignore: unused_element
  String get _content => '''
import '../app_strings.dart';

const Map<String, String> enUs = {
  Strings.hello : 'Merhaba!',
  Strings.loading : 'Yükleniyor',

  Strings.changeTheme : 'Tema Değiştir',
  Strings.changeLanguage : 'Dil Değiştir',

  Strings.noInternetConnection : 'İnternet Bağlantısı Yok!',
  Strings.serverNotResponding : 'Sunucu yanıt vermiyor!',
  Strings.someThingWentWorng : 'Yanlış giden bir şeyler var',
  Strings.apiNotFound : 'Rota bulunamadı!',
  Strings.serverError : 'Sunucu hatası',
};
''';
}
