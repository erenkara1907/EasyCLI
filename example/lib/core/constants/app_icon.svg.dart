String asset = 'assets/icon/social/icon_social';

class AppIconSvg {
  static AppIconSvg? _instance;
  static AppIconSvg get instance {
    _instance ??= AppIconSvg._init();
    return _instance!;
  }

  AppIconSvg._init();

  String svgFacebookIcon = 'assets/icon/social/icon_social' '_' 'facebook.svg';
  String svgGoogleIcon = 'assets/icon/social/icon_social' '_' 'google.svg';
  String svgInstagramIcon = 'assets/icon/social/icon_social' '_' 'instagram.svg';
  String svgMessengerIcon = 'assets/icon/social/icon_social' '_' 'messenger.svg';
  String svgPinterestIcon = 'assets/icon/social/icon_social' '_' 'pinterest.svg';
  String svgTwitterIcon = 'assets/icon/social/icon_social' '_' 'twitter.svg';
}
