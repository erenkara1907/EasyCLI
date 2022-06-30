import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../manager/cache/shared_pref.dart';
import 'en_US/en_us_translation.dart';
import 'tr_TR/tr_tr_translation.dart';

class LocalizationService extends Translations {
  // default language
  static Locale defaultLanguage = supportedLanguages['en']!;

  // supported languages
  static Map<String,Locale> supportedLanguages = {
    'en' : const Locale('en', 'US'),
    'tr' : const Locale('tr', 'TR'),
  };

  // supported languages fonts family (must be in assets & pubspec yaml) or you can use google fonts
  // static Map<String,TextStyle> supportedLanguagesFontsFamilies = {
  //   'en' : const TextStyle(fontFamily: 'Poppins'),
  //   'tr': const TextStyle(fontFamily: 'Poppins'),
  // };

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUs,
    'tr_TR': trTR,
  };

  /// check if the language is supported
  static isLanguageSupported(String languageCode) =>
    supportedLanguages.keys.contains(languageCode);


  /// update app language by code language for example (en,tr..etc)
  static updateLanguage(String languageCode) async {
    // check if the language is supported
    if(!isLanguageSupported(languageCode)) return;
    // update current language in shared pref
    SharedPref.setCurrentLanguage(languageCode);
    await Get.updateLocale(supportedLanguages[languageCode]!);
  }

  /// check if the language is english
  static bool isItEnglish() =>
      SharedPref.getCurrentLocal().languageCode.toLowerCase().contains('en');

  /// get current locale
  static Locale getCurrentLocal () => SharedPref.getCurrentLocal();
}
