// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/cupertino.dart';
import '../../../constants/enum/api_call_status_enum.dart';

// switch between different widgets with animation
// depending on api call status
class AppWidgetAnimator extends StatelessWidget {
  final ApiCallStatus apiCallStatus;
  final Widget loadingWidget;
  final Widget successWidget;
  final Widget errorWidget;
  final Widget emptyWidget;
  final Widget holdingWidget;
  final Widget refreshWidget;
  final Duration animationDuration;
  final Widget Function(Widget, Animation)? transitionBuilder;
  // this will be used to not hide the success widget when refresh
  // if its true success widget will still be shown
  // if false refresh widget will be shown or empty box if passed (refreshWidget) is null
  final bool hideSuccessWidgetWhileRefreshing;

  const AppWidgetAnimator({
    Key? key,
    required this.apiCallStatus,
    required this.loadingWidget,
    required this.errorWidget,
    required this.successWidget,
    this.holdingWidget = const SizedBox(),
    this.emptyWidget = const SizedBox(),
    this.refreshWidget = const SizedBox(),
    this.animationDuration = const Duration(milliseconds: 300),
    this.transitionBuilder,
    this.hideSuccessWidgetWhileRefreshing = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: animationDuration,
      child: _getChild(),
      transitionBuilder: transitionBuilder ??
          (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
    );
  }

  Widget _getChild() {
    if (apiCallStatus == ApiCallStatus.success) {
      return successWidget;
    } else if (apiCallStatus == ApiCallStatus.error) {
      return errorWidget;
    } else if (apiCallStatus == ApiCallStatus.holding) {
      return holdingWidget;
    } else if (apiCallStatus == ApiCallStatus.loading) {
      return loadingWidget;
    } else if (apiCallStatus == ApiCallStatus.empty) {
      return emptyWidget;
    } else if (apiCallStatus == ApiCallStatus.refresh) {
      return refreshWidget;
    } else {
      return successWidget;
    }
  }
}
