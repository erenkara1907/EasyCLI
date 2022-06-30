import '../../../../../../../utils/directory.dart';
import '../../../../../../sample.dart';

class AppSnackbar extends Sample {
  final String dirName;
  AppSnackbar(
    String path,
    this.dirName,
  ) : super(path);

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'app_snackbar.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'widget/app_sncakbar_export.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'widget/app' '_snackbar.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSnackBar {
  static showCustomSnackBar({required String title, required String message,Duration? duration})
  {
    Get.snackbar(
      title,
      message,
      duration: duration ?? const Duration(seconds: 3),
      margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
      colorText: Colors.white,
      backgroundColor: Colors.green,
      icon: const Icon(Icons.check_circle, color: Colors.white,),
    );
  }


  static showCustomErrorSnackBar({required String title, required String message,Color? color,Duration? duration})
  {
    Get.snackbar(
      title,
      message,
      duration: duration ?? const Duration(seconds: 3),
      margin: EdgeInsets.only(top: 10,left: 10,right: 10),
      colorText: Colors.white,
      backgroundColor: color ?? Colors.redAccent,
      icon: Icon(Icons.error, color: Colors.white,),
    );
  }



  static showCustomToast({String? title, required String message,Color? color,Duration? duration}){
    Get.rawSnackbar(
      title: title,
      duration: duration ?? const Duration(seconds: 3),
      snackStyle: SnackStyle.GROUNDED,
      backgroundColor: color ?? Colors.green,
      onTap: (snack){
        Get.closeAllSnackbars();
      },
      //overlayBlur: 0.8,
      message: message,
    );
  }


  static showCustomErrorToast({String? title, required String message,Color? color,Duration? duration}){
    Get.rawSnackbar(
      title: title,
      duration: duration ?? const Duration(seconds: 3),
      snackStyle: SnackStyle.GROUNDED,
      backgroundColor: color ?? Colors.redAccent,
      onTap: (snack){
        Get.closeAllSnackbars();
      },
      //overlayBlur: 0.8,
      message: message,
    );
  }
}
''';
}
