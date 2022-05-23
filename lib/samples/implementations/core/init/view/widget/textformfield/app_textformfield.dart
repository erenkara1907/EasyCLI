import 'package:recase/recase.dart';
import '../../../../../../../utils/directory.dart';
import '../../../../../../sample.dart';

class AppTextFormField extends Sample {
  final String dirName;
  AppTextFormField(
    String path,
    this.dirName,
  ) : super(path);

  String get serviceName {
    final screenName = '$dirName' 'service';
    return ReCase(screenName).pascalCase;
  }

  @override
  String get content => _content;

  @override
  String get exportContent => '''export 'app_textformfield.dart';
''';

  @override
  String get exportFullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'widget/app_textformfield_export.dart');
  }

  @override
  String get fullPath {
    return DirectoryService.replaceAsExpected(
        path: '$path/core/init/view/' 'widget/app' '_textformfield.dart');
  }

  // ignore: unused_element
  String get _content => '''
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import '../base/base_stateless.dart';

class AppTextFormField extends BaseStateless {
  final double width;
  final double height;
  final String? labelText;
  final bool isIcon;
  final bool isPhoneTextField;
  final TextEditingController? controller;
  final TextStyle? labelStyle;
  final double? borderRadiusAll;
  final double? borderWidth;
  final Color? borderColor;
  final Color? fillColor;
  final String? hintText;
  final String? Function(String?)? validator;
  final Widget? icon;
  final FutureOr<String?> Function(PhoneNumber?)? phoneValidator;
  final void Function(String)? onChanged;
  final void Function(PhoneNumber)? phoneOnChanged;
  final bool? obscureText;
  final double? elevation;
  final List<TextInputFormatter>? inputFormatters;
  final TextAlign? textAlign;
  final void Function()? onTap;
  final TextInputType? textInputType;
  final int? maxLength;

  // ignore: use_key_in_widget_constructors
  AppTextFormField({
    this.width = 100.0,
    this.height = 50.0,
    this.labelText,
    this.isIcon = false,
    this.isPhoneTextField = false,
    this.validator,
    this.controller,
    this.hintText,
    this.onChanged,
    this.phoneOnChanged,
    this.phoneValidator,
    this.icon,
    this.labelStyle,
    this.borderRadiusAll,
    this.borderColor,
    this.borderWidth,
    this.fillColor,
    this.obscureText,
    this.elevation,
    this.inputFormatters,
    this.textAlign,
    this.onTap,
    this.textInputType,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: isPhoneTextField == false
          ? Material(
              elevation: elevation ?? 0,
              child: TextFormField(
                keyboardType: textInputType ?? TextInputType.name,
                onTap: onTap ?? () {},
                textAlign: textAlign ?? TextAlign.start,
                obscureText: obscureText ?? false,
                controller: controller,
                onChanged: onChanged,
                validator: validator ?? (_) {
                  return null;
                },
                inputFormatters: inputFormatters ??
                    [LengthLimitingTextInputFormatter(maxLength ?? 99)],
                cursorColor: currentTheme(context).primaryColor,
                decoration: InputDecoration(
                  fillColor: fillColor ??
                      currentTheme(context).scaffoldBackgroundColor,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadiusAll ?? 5),
                    borderSide: BorderSide(
                      width: borderWidth ?? 1,
                      color: borderColor ?? currentTheme(context).splashColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadiusAll ?? 5),
                    borderSide: BorderSide(
                      width: borderWidth ?? 1,
                      color: borderColor ?? currentTheme(context).splashColor,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadiusAll ?? 5),
                    borderSide: BorderSide(
                      width: borderWidth ?? 2,
                      color: borderColor ?? currentTheme(context).errorColor,
                    ),
                  ),
                  hintText: hintText ?? '',
                  hintStyle: currentTextTheme(context).headline5,
                  labelText: labelText ?? '',
                  labelStyle: labelStyle ?? currentTextTheme(context).headline4,
                  suffixIcon: isIcon == true
                      ? Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: icon ?? appIcon.iconDownload(),
                        )
                      : null,
                ),
              ),
            )
          : IntlPhoneField(
              disableLengthCheck: true,
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
              ],
              autovalidateMode: AutovalidateMode.disabled,
              flagsButtonMargin: const EdgeInsets.only(left: 10),
              dropdownIcon: appIcon.iconArrowDown(),
              dropdownIconPosition: IconPosition.trailing,
              dropdownTextStyle: currentTextTheme(context).subtitle2,
              obscureText: obscureText ?? false,
              cursorColor: currentTheme(context).primaryColor,
              decoration: InputDecoration(
                fillColor:
                    fillColor ?? currentTheme(context).scaffoldBackgroundColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadiusAll ?? 5),
                  borderSide: BorderSide(
                    width: borderWidth ?? 1,
                    color: borderColor ?? currentTheme(context).splashColor,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadiusAll ?? 5),
                  borderSide: BorderSide(
                    width: borderWidth ?? 1,
                    color: borderColor ?? currentTheme(context).splashColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadiusAll ?? 5),
                  borderSide: BorderSide(
                    width: borderWidth ?? 1,
                    color: borderColor ?? currentTheme(context).splashColor,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadiusAll ?? 5),
                  borderSide: BorderSide(
                    width: borderWidth ?? 2,
                    color: borderColor ?? currentTheme(context).errorColor,
                  ),
                ),
                hintText: 'enter_number'.tr,
                hintStyle: currentTextTheme(context).subtitle2!.copyWith(
                      color: currentTheme(context).hoverColor,
                    ),
                labelText: 'number'.tr,
                labelStyle: labelStyle ?? currentTextTheme(context).headline4,
                suffixIcon: isIcon == true
                    ? Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: icon ?? appIcon.iconDownload(),
                      )
                    : null,
              ),
              controller: controller ?? TextEditingController(),
              validator: phoneValidator,
              initialCountryCode: 'TR',
              onChanged: phoneOnChanged,
            ),
    );
  }
}
''';
}
