import 'package:abhivyakti_app/screens/root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/svg/abhivyakti-text-1.svg'),
      null,
    ),
    precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/svg/abhivyakti-text-2.svg'),
      null,
    ),
    // precachePicture(
    //   ExactAssetPicture(SvgPicture.svgStringDecoder, 'assets/images/logo1.png'),
    //   null,
    // ),
    precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/svg/abhivyakti.svg'),
      null,
    ),
    precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/svg/about_doodle.svg'),
      null,
    ),
    precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/svg/art_doodle.svg'),
      null,
    ),
    precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoder, 'assets/svg/balloon.svg'),
      null,
    ),
    precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/svg/bottom_doodle.svg'),
      null,
    ),
    precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoder, 'assets/svg/drafts.svg'),
      null,
    ),
    precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/svg/gallery-icon.svg'),
      null,
    ),
    precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoder, 'assets/svg/grass.svg'),
      null,
    ),
    // precachePicture(
    //   ExactAssetPicture(SvgPicture.svgStringDecoder, 'assets/svg/iiit.svg'),
    //   null,
    // ),
    precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/svg/instagram.svg'),
      null,
    ),
    precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoder, 'assets/svg/leaf.svg'),
      null,
    ),
    precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoder, 'assets/svg/logo-big.svg'),
      null,
    ),
    // precachePicture(
    //   ExactAssetPicture(SvgPicture.svgStringDecoder, 'assets/svg/logo2.svg'),
    //   null,
    // ),
    precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoder, 'assets/svg/roll.svg'),
      null,
    ),
    precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/svg/team_doodle.svg'),
      null,
    ),
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abhivyakti',
      debugShowCheckedModeBanner: false,
      home: Root(),
    );
  }
}
