import 'package:flutter/material.dart';
class AppIcon {
  static AppIcon? _instance;
  static AppIcon get instance {
    _instance ??= AppIcon._init();
    return _instance!;
  }

  AppIcon._init();

  // Normal Arrow Icon
  Icon iconArrowDown({double? size, Color? color}) => Icon(
        Icons.keyboard_arrow_down,
        size: size,
        color: color,
      );

  Icon iconArrowUp({double? size, Color? color}) => Icon(
        Icons.keyboard_arrow_up,
        size: size,
        color: color,
      );

  Icon iconArrowLeft({double? size, Color? color}) => Icon(
        Icons.keyboard_arrow_left,
        size: size,
        color: color,
      );

  Icon iconArrowRight({double? size, Color? color}) => Icon(
        Icons.keyboard_arrow_right,
        size: size,
        color: color,
      );

  // Ios Arrow Icon
  Icon iconArrowIosLeft({double? size, Color? color}) => Icon(
        Icons.arrow_back_ios,
        size: size,
        color: color,
      );

  Icon iconArrowIosRight({double? size, Color? color}) => Icon(
        Icons.arrow_forward_ios,
        size: size,
        color: color,
      );

  // Search Icon
  Icon iconSearch({double? size, Color? color}) => Icon(
        Icons.search,
        size: size,
        color: color,
      );

  // Visibility Icon
  Icon iconVisibility({double? size, Color? color}) => Icon(
        Icons.visibility,
        size: size,
        color: color,
      );

  Icon iconVisibilityOff({double? size, Color? color}) => Icon(
        Icons.visibility_off,
        size: size,
        color: color,
      );

  // Login & Register Icons
  Icon iconEmail({double? size, Color? color}) => Icon(
        Icons.email,
        size: size,
        color: color,
      );

  Icon iconPerson({double? size, Color? color}) => Icon(
        Icons.person,
        size: size,
        color: color,
      );

  Icon iconPersonOutline({double? size, Color? color}) => Icon(
        Icons.person_outline,
        size: size,
        color: color,
      );

  Icon iconPassword({double? size, Color? color}) => Icon(
        Icons.lock,
        size: size,
        color: color,
      );

  // Phone Icon
  Icon iconPhone({double? size, Color? color}) => Icon(
        Icons.phone,
        size: size,
        color: color,
      );

  // Menu Icon
  Icon iconMenu({double? size, Color? color}) => Icon(
        Icons.menu,
        size: size,
        color: color,
      );

  // Done Icon
  Icon iconDone({double? size, Color? color}) => Icon(
        Icons.done,
        size: size,
        color: color,
      );

  // Home Icon
  Icon iconHome({double? size, Color? color}) => Icon(
        Icons.home,
        size: size,
        color: color,
      );

  // Approval Icon
  Icon iconApproval({double? size, Color? color}) => Icon(
        Icons.approval,
        size: size,
        color: color,
      );

  // Calendar Icon
  Icon iconCalendar({double? size, Color? color}) => Icon(
        Icons.calendar_today,
        size: size,
        color: color,
      );

  // Full Favourite Icon
  Icon iconFullFavourite({double? size, Color? color}) => Icon(
        Icons.favorite,
        size: size,
        color: color,
      );

  // Empty Favourite Icon
  Icon iconEmptyFavourite({double? size, Color? color}) => Icon(
        Icons.favorite_border_outlined,
        size: size,
        color: color,
      );

  // Filter Icon
  Icon iconFilter({double? size, Color? color}) => Icon(
        Icons.tune,
        size: size,
        color: color,
      );

  // Map Icon
  Icon iconMap({double? size, Color? color}) => Icon(
        Icons.map,
        size: size,
        color: color,
      );

  // Star Icon
  Icon iconStar({double? size, Color? color}) => Icon(
        Icons.star,
        size: size,
        color: color,
      );

  Icon iconStarBorder({double? size, Color? color}) => Icon(
        Icons.star_border,
        size: size,
        color: color,
      );

  // Call Icon
  Icon iconCall({double? size, Color? color}) => Icon(
        Icons.call,
        size: size,
        color: color,
      );

  // Location Icon
  Icon iconLocation({double? size, Color? color}) => Icon(
        Icons.location_on,
        size: size,
        color: color,
      );

  Icon iconLocationBorder({double? size, Color? color}) => Icon(
        Icons.location_on_outlined,
        size: size,
        color: color,
      );

  // Share Icon
  Icon iconShare({double? size, Color? color}) => Icon(
        Icons.share,
        size: size,
        color: color,
      );

  // Image Icon
  Icon iconImage({double? size, Color? color}) => Icon(
        Icons.image,
        size: size,
        color: color,
      );

  // Add Icon
  Icon iconAdd({double? size, Color? color}) => Icon(
        Icons.add,
        size: size,
        color: color,
      );

  // Icon Remove
  Icon iconRemove({double? size, Color? color}) => Icon(
        Icons.remove,
        size: size,
        color: color,
      );

  // Notification Icon
  Icon iconNotification({double? size, Color? color}) => Icon(
        Icons.notifications,
        size: size,
        color: color,
      );

  Icon iconNotificationBorder({double? size, Color? color}) => Icon(
        Icons.notifications_none,
        size: size,
        color: color,
      );

  // Settings Icon
  Icon iconSettings({double? size, Color? color}) => Icon(
        Icons.settings_rounded,
        size: size,
        color: color,
      );

  // Download Icon
  Icon iconDownload({double? size, Color? color}) => Icon(
        Icons.settings_rounded,
        size: size,
        color: color,
      );

  // Payment Icon
  Icon iconPayment({double? size, Color? color}) => Icon(
        Icons.payment,
        size: size,
        color: color,
      );

  // Open Lock Icon
  Icon iconOpenLock({double? size, Color? color}) => Icon(
        Icons.lock_open,
        size: size,
        color: color,
      );

  // Person Add Icon
  Icon iconPersonAdd({double? size, Color? color}) => Icon(
        Icons.person_add_alt,
        size: size,
        color: color,
      );

  // Question Answer Icon
  Icon iconQuestionAnswer({double? size, Color? color}) => Icon(
        Icons.question_answer,
        size: size,
        color: color,
      );

  // Rate Icon
  Icon iconRate({double? size, Color? color}) => Icon(
        Icons.question_mark,
        size: size,
        color: color,
      );

  // Logout Icon
  Icon iconLogout({double? size, Color? color}) => Icon(
        Icons.exit_to_app,
        size: size,
        color: color,
      );
}
