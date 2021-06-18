import 'package:flutter_svg/flutter_svg.dart';

class IconsData {
  static String aboutAsset = 'assets/svg/about.svg';
  static String aboutDoodleAsset = 'assets/svg/about_doodle.svg';
  static String artAsset = 'assets/svg/art.svg';
  static String galleryAsset = 'assets/svg/gallery.svg';
  static String logoAsset = 'assets/svg/logo.svg';
  static String joinAsset = 'assets/svg/join.svg';
  static String instaAsset = 'assets/svg/instagram.svg';

  static final logo = SvgPicture.asset(
    logoAsset,
    width: 52,
    height: 52,
  );

  static final insta = SvgPicture.asset(
    instaAsset,
    width: 52,
    height: 52,
  );
  static final aboutDoodle = SvgPicture.asset(
    aboutDoodleAsset,
    width: 95,
    height: 153,
  );
}
