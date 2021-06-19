import 'dart:ui';

import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/widgets/carousel.dart';
import 'package:flutter/material.dart';

List _images = [
  AssetImage('assets/gallery/1.png'),
  AssetImage('assets/gallery/2.png'),
  AssetImage('assets/gallery/3.png'),
  AssetImage('assets/gallery/4.png'),
  AssetImage('assets/gallery/5.png'),
  AssetImage('assets/gallery/6.png'),
  AssetImage('assets/gallery/7.png'),
];

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 150, right: 150, top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'GALLERY',
                style: kTitle,
              ),
              SizedBox(height: 40),
              Text(
                'A collection of photos from the club ',
                style: kBody,
              ),
            ],
          ),
        ),
        SizedBox(height: 100),
        Container(
          child: Carousel(
            height: 380,
            aspectRatio: 1,
            images: _images,
          ),
        ),
      ],
    );
  }
}
