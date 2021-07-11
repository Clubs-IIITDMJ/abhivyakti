import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/icons.dart';
import 'package:abhivyakti_app/core/strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatefulWidget {
  const About({
    Key? key,
  }) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    double h = kSideBarWidth(context) + 20;
    return ScreenTypeLayout(
      mobile: content(
        titleStyle: kTitleMobile,
        bodyStyle: kBodyMobile,
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        size: Size(30, 40),
        vSpace: 20,
      ),
      tablet: content(
        titleStyle: kTitleTablet,
        bodyStyle: kBodyTablet,
        padding: EdgeInsets.only(left: h, right: h, top: 25),
        size: Size(45, 70),
        vSpace: 40,
      ),
      desktop: content(
        titleStyle: kTitle,
        bodyStyle: kBody,
        padding: EdgeInsets.only(left: h, right: h, top: 50),
        size: Size(95, 120),
        vSpace: 60,
      ),
    );
  }

  Widget content({
    TextStyle? titleStyle,
    TextStyle? bodyStyle,
    EdgeInsets? padding,
    Size? size,
    double? vSpace,
  }) =>
      AnimatedContainer(
        duration: Duration(milliseconds: 250),
        alignment: Alignment.center,
        padding: padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  kAboutTitle,
                  style: titleStyle,
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 250),
                    height: size!.height,
                    width: size.width,
                    child: IconsData.aboutDoodle,
                  ),
                ),
              ],
            ),
            SizedBox(height: vSpace),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: kAboutHead1,
                    style: bodyStyle!.copyWith(color: kRed),
                  ),
                  TextSpan(
                    text: kAboutHead2,
                    style: bodyStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: vSpace! / 3),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: kAboutHead3,
                    style: bodyStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: vSpace * (2 / 3)),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: kAboutHead4,
                    style: bodyStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: vSpace / 3),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: kAboutHead5,
                    style: bodyStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
