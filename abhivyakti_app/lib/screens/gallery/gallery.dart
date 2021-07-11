import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:abhivyakti_app/core/strings.dart';
import 'package:abhivyakti_app/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _content(
        vSpace: 20,
        bodyStyle: kBodyMobile,
        titleStyle: kTitleMobile,
        padding: EdgeInsets.only(top: 10),
      ),
      tablet: _content(
        vSpace: 40,
        bodyStyle: kBodyTablet,
        titleStyle: kTitleTablet,
        padding: EdgeInsets.only(top: 25),
      ),
      desktop: _content(
        vSpace: 80,
        bodyStyle: kBody,
        titleStyle: kTitle,
        padding: EdgeInsets.only(top: 50),
      ),
    );
  }

  Widget _content({
    TextStyle? titleStyle,
    TextStyle? bodyStyle,
    EdgeInsets? padding,
    double? vSpace,
  }) =>
      AnimatedContainer(
        duration: Duration(milliseconds: 250),
        constraints: BoxConstraints(
          minWidth: 360,
          minHeight: 300,
          maxWidth: 1440,
        ),
        margin: EdgeInsets.only(bottom: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: padding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    kGalleryTitle,
                    style: titleStyle,
                  ),
                  SizedBox(height: vSpace! / 2),
                  Text(
                    kGalleryHeading,
                    style: bodyStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: vSpace),
            Container(
              child: Carousel(
                isGallery: true,
                height: displayHeight(context) * 0.4,
                aspectRatio: 2,
              ),
            ),
          ],
        ),
      );
}
