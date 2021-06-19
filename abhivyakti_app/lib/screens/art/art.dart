import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/icons.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:abhivyakti_app/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

class Art extends StatelessWidget {
  const Art({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 150, right: 150, top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              IconsData.artDoodle,
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'ART',
                      style: kTitle,
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Artworks from the members of the club.',
                      style: kBody,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 100),
          Container(
            child: Carousel(
              height: 540,
              aspectRatio: 0.5,
              images: _images,
            ),
          ),
        ],
      ),
    );
  }
}
