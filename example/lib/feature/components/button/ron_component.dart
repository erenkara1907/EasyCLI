import '../../../core/init/view/base/base_stateless.dart';
import 'package:flutter/material.dart';

class ron extends BaseStateless {
  final double width;
  final double height;
  final void Function() onPressed;
  final String text;
  final TextStyle? textStyle;

  // ignore: use_key_in_widget_constructors
  ron({
    required this.width,
    required this.height,
    required this.onPressed,
    required this.text,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle ??
              currentTextTheme(context).subtitle2!.copyWith(
                    color: currentTheme(context).primaryColor,
                  ),
        ),
      ),
    );
  }
}
