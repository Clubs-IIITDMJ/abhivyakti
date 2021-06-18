import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/icons.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 150, right: 150, top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ABOUT THE CLUB',
                style: kTitle,
              ),
              IconsData.aboutDoodle,
            ],
          ),
          SizedBox(height: 60),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Abhivyakti- The Arts and Crafts club ",
                  style: kBody.copyWith(color: kRed),
                ),
                TextSpan(
                  text:
                      "of PDPM IIITDM Jabalpur is a springing community of art lovers from across streams.",
                  style: kBody,
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
                  style: kBody,
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
                  style: kBody,
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
                  style: kBody,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
