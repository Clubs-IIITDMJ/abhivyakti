import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/icons.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:abhivyakti_app/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

List _images = [
  AssetImage('assets/art/1.png'),
  AssetImage('assets/art/2.png'),
  AssetImage('assets/art/3.png'),
  AssetImage('assets/art/4.jpg'),
  AssetImage('assets/art/5.jpeg'),
  AssetImage('assets/art/6.jpeg'),
  AssetImage('assets/art/7.jpeg'),
  AssetImage('assets/art/8.jpeg'),
  AssetImage('assets/art/9.JPG'),
  AssetImage('assets/art/10.JPG'),
  AssetImage('assets/art/11.jpg'),
  AssetImage('assets/art/12.JPG'),
  AssetImage('assets/art/13.png'),
  AssetImage('assets/art/14.jpeg'),
  AssetImage('assets/art/15.png'),
  AssetImage('assets/art/16.jpg'),
  AssetImage('assets/art/17.png'),
  AssetImage('assets/art/18.jpeg'),
  AssetImage('assets/art/19.jpg'),
  AssetImage('assets/art/20.png'),
  AssetImage('assets/art/21.jpg'),
  AssetImage('assets/art/22.jpeg'),
  AssetImage('assets/art/23.png'),
  AssetImage('assets/art/24.JPG'),
  AssetImage('assets/art/25.jpg'),
  AssetImage('assets/art/26.png'),
  AssetImage('assets/art/27.jpeg'),
];

class Art extends StatefulWidget {
  const Art({Key? key}) : super(key: key);

  @override
  _ArtState createState() => _ArtState();
}

class _ArtState extends State<Art> {
  int type = 0;
  double _top = 0, _left = 0, _right = 0, _height = 0, _height1 = 0;
  double _h = 0, _w = 0;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      if (size.isMobile) {
        type = 2;
        _top = 10;
        _height = 10;
        _height1 = 20;
        _left = 30;
        _right = 30;
        _w = 30;
        _h = 50;
      } else if (size.isTablet) {
        type = 1;
        _top = 25;
        _height = 15;
        _height1 = 40;
        _left = 75;
        _right = 75;
        _w = 47;
        _h = 78;
      } else {
        type = 0;
        _top = 50;
        _height = 25;
        _height1 = 100;
        _left = 150;
        _right = 150;
        _w = 95;
        _h = 120;
      }
      return Container(
        padding: EdgeInsets.only(left: _left, right: _right, top: _top),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: _h,
                  width: _w,
                  child: IconsData.artDoodle,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'ART',
                        style: type == 2
                            ? kTitleMobile
                            : type == 1
                                ? kTitleTablet
                                : kTitle,
                      ),
                      SizedBox(height: _height),
                      Text(
                        'Artworks from the members of the club.',
                        style: type == 2
                            ? kBodyMobile
                            : type == 1
                                ? kBodyTablet
                                : kBody,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: _height1),
            Container(
              child: Carousel(
                height: type == 0 ? 540 : 250,
                aspectRatio: 1,
                images: _images,
              ),
            ),
          ],
        ),
      );
    });
  }
}
