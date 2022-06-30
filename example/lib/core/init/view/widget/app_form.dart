import 'package:flutter/material.dart';
import '../base/base_stateless.dart';

class AppForm extends BaseStateless {
  final double width;
  final double height;
  final Key? globalKey;
  final List<Widget>? textFormFields;
  final bool isColumn;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;

  // ignore: use_key_in_widget_constructors
  AppForm({
    this.width = 100.0,
    this.height = 50.0,
    this.globalKey,
    this.textFormFields,
    this.isColumn = true,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.min,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Form(
        key: globalKey ?? GlobalKey(),
        child: isColumn
            ? Column(
                mainAxisAlignment: mainAxisAlignment,
                crossAxisAlignment: crossAxisAlignment,
                mainAxisSize: mainAxisSize,
                children: textFormFields ?? [],
              )
            : Row(
                mainAxisAlignment: mainAxisAlignment,
                crossAxisAlignment: crossAxisAlignment,
                mainAxisSize: mainAxisSize,
                children: textFormFields ?? [],
              ),
      ),
    );
  }
}
