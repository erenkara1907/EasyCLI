import 'package:flutter/material.dart';
class Ronlanguage {
  static Ronlanguage? _instance;
  static Ronlanguage get instance {
    _instance ??= Ronlanguage._init();
    return _instance!;
  }

  Ronlanguage._init();

  final enLocale = const Locale('en', 'US');
  List<Locale> get supportedLocales =>  [enLocale];
}
