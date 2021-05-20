import 'package:abhivyakti_app/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

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
    precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/svg/abhivyakti-text-3.svg'),
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
