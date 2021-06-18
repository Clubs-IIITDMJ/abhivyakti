import 'package:flutter_svg/flutter_svg.dart';

class IconsData {
  static String aboutDoodleAsset = 'assets/svg/about_doodle.svg';
  static String balloonAsset = 'assets/svg/balloon.svg';
  static String grassAsset = 'assets/svg/grass.svg';
  static String galleryAsset = 'assets/svg/gallery-icon.svg';
  static String instaAsset = 'assets/svg/instagram.svg';
  static String logoAsset = 'assets/svg/logo-big.svg';
  static String leafAsset = 'assets/svg/leaf.svg';

  static final aboutDoodle = SvgPicture.asset(
    aboutDoodleAsset,
    width: 95,
    height: 153,
  );
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
}
