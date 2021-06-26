import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:abhivyakti_app/core/strings.dart';
import 'package:abhivyakti_app/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

List _images = [
  NetworkImage('assets/gallery/1.png'),
  NetworkImage('assets/gallery/2.png'),
  NetworkImage('assets/gallery/3.png'),
  NetworkImage('assets/gallery/4.png'),
  NetworkImage('assets/gallery/5.png'),
  NetworkImage('assets/gallery/6.png'),
  NetworkImage('assets/gallery/7.png'),
];

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  int type = 0;
  double _top = 0, _height = 0, _height1 = 0;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      if (size.isMobile) {
        type = 2;
        _top = 10;
        _height = 10;
        _height1 = 20;
      } else if (size.isTablet) {
        type = 1;
        _top = 25;
        _height = 15;
        _height1 = 40;
      } else {
        type = 0;
        _top = 50;
        _height = 25;
        _height1 = 100;
      }
      return Container(
        width: displayWidth(context),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: _top),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    kGalleryTitle,
                    style: kTitle,
                  ),
                  SizedBox(height: _height),
                  Text(
                    'A collection of photos from the club ',
                    style: kBody,
                  ),
                ],
              ),
            ),
            SizedBox(height: _height1),
            Container(
              child: Carousel(
                height: type == 0 ? 380 : 150,
                aspectRatio: 2,
                images: _images,
              ),
            ),
          ],
        ),
      );
    });
  }
}
