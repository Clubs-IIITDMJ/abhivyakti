import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/icons.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  int type = 0;
  double _height = 0, _width = 0, _left = 0, _right = 0, _top = 0;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        if (size.isMobile) {
          type = 2;
          _width = 30;
          _height = 50;
          _left = 30;
          _right = 30;
          _top = 10;
        } else if (size.isTablet) {
          type = 1;
          _width = 47;
          _height = 78;
          _left = 75;
          _right = 75;
          _top = 25;
        } else {
          type = 0;
          _width = 95;
          _height = 120;
          _left = 150;
          _right = 150;
          _top = 50;
        }
        return Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: _left, right: _right, top: _top),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ABOUT THE CLUB',
                    style: type == 2
                        ? kTitleMobile
                        : type == 1
                            ? kTitleTablet
                            : kTitle,
                  ),
                  Container(
                    height: _height,
                    width: _width,
                    child: IconsData.aboutDoodle,
                  ),
                ],
              ),
              SizedBox(height: 60),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Abhivyakti- The Arts and Crafts club ",
                      style: type == 2
                          ? kBodyMobile.copyWith(color: kRed)
                          : type == 1
                              ? kBodyTablet.copyWith(color: kRed)
                              : kBody.copyWith(color: kRed),
                    ),
                    TextSpan(
                      text:
                          "of PDPM IIITDM Jabalpur is a springing community of art lovers from across streams.",
                      style: type == 2
                          ? kBodyMobile
                          : type == 1
                              ? kBodyTablet
                              : kBody,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "We welcome and invite all who have a passion for art and are devoted to put their skills to good use. We encourage their talents and give them an opportunity to share their skills with the community. We are a varied group of people with experience and knowledge of digital art, skin art, themes, wallpaper art, traditional art, Art prints, crafts models, and many more things. And we believe in sharing these skills with all.",
                      style: type == 2
                          ? kBodyMobile
                          : type == 1
                              ? kBodyTablet
                              : kBody,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Making our way through a multitude of exciting events and activities throughout the year, we provide numerous opportunities for our community to learn and to express themselves through art. Not limiting ourselves to club activities, Abhivyakti is constantly active throughout the seasons, working during gatherings, fests or showcasing our talent around the college campus.",
                      style: type == 2
                          ? kBodyMobile
                          : type == 1
                              ? kBodyTablet
                              : kBody,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Be it wall paintings or installations, painted 3D illusions or decorating the campus, we always have something up our sleeves!",
                      style: type == 2
                          ? kBodyMobile
                          : type == 1
                              ? kBodyTablet
                              : kBody,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
