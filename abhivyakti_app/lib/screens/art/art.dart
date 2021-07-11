import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/icons.dart';
import 'package:abhivyakti_app/core/strings.dart';
import 'package:abhivyakti_app/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Art extends StatefulWidget {
  const Art({Key? key}) : super(key: key);

  @override
  _ArtState createState() => _ArtState();
}

class _ArtState extends State<Art> {
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
        imageHeight: 250,
      ),
      tablet: content(
        titleStyle: kTitleTablet,
        bodyStyle: kBodyTablet,
        padding: EdgeInsets.only(left: h, right: h, top: 25),
        size: Size(45, 70),
        vSpace: 40,
        imageHeight: 540,
      ),
      desktop: content(
        titleStyle: kTitle,
        bodyStyle: kBody,
        padding: EdgeInsets.only(left: h, right: h, top: 50),
        size: Size(95, 120),
        vSpace: 60,
        imageHeight: 540,
      ),
    );
  }

  Widget content({
    TextStyle? titleStyle,
    TextStyle? bodyStyle,
    EdgeInsets? padding,
    Size? size,
    double? vSpace,
    double? imageHeight,
  }) =>
      AnimatedContainer(
        duration: Duration(milliseconds: 250),
        constraints: BoxConstraints(
          minWidth: 360,
          minHeight: 300,
          maxHeight: 1000,
          maxWidth: 1440,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: padding!,
              child: Row(
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 250),
                    height: size!.height,
                    width: size.width,
                    child: IconsData.artDoodle,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          kArtTitle,
                          style: titleStyle,
                        ),
                        SizedBox(height: vSpace! / 2),
                        Text(
                          kArtHeading,
                          style: bodyStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: vSpace),
            Container(
              alignment: Alignment.topCenter,
              child: Carousel(
                height: imageHeight,
                aspectRatio: 1,
                isGallery: false,
              ),
            ),
          ],
        ),
      );
}
