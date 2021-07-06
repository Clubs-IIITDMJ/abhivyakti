import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/icons.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: content(
        space: Size(15, 10),
        size: Size(25, 40),
        bodyStyle: kBodyMobile,
        subBodyStyle: kSubBodyMobile,
        headingstyle: kHeadingMobile,
        subHeadingstyle: kBody0Mobile,
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      ),
      tablet: content(
        space: Size(25, 15),
        size: Size(40, 70),
        bodyStyle: kBodyTablet,
        subBodyStyle: kSubBodyTablet,
        headingstyle: kHeadingTablet,
        subHeadingstyle: kBody0Tablet,
        padding: EdgeInsets.only(left: 30, right: 30, top: 20),
      ),
      desktop: content(
        space: Size(40, 20),
        size: Size(50, 90),
        bodyStyle: kBody,
        subBodyStyle: kSubBody,
        headingstyle: kHeading,
        subHeadingstyle: kBody0,
        padding: EdgeInsets.only(left: 50, right: 50, top: 20),
      ),
    );
  }

  Widget content({
    Size? size,
    Size? space,
    EdgeInsets? padding,
    TextStyle? headingstyle,
    TextStyle? subHeadingstyle,
    TextStyle? bodyStyle,
    TextStyle? subBodyStyle,
  }) =>
      Container(
        padding: padding,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black12, width: 1),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  'CONTACT US',
                  style: headingstyle,
                ),
                SizedBox(width: 20),
                Container(
                  height: size!.height,
                  width: size.width,
                  child: IconsData.sharkDoodle,
                ),
              ],
            ),
            SizedBox(height: space!.height),
            SubHead(
              width: displayWidth(context) - padding!.left - padding.right,
              titleStyle: subHeadingstyle,
              subTitleStyle: bodyStyle,
              hSpace: space.width,
            ),
            SizedBox(height: space.height),
            Text(
              'PDPM IIITDM JABALPUR',
              style: bodyStyle,
            ),
            SizedBox(height: space.height),
            InkWell(
              onTap: () async {
                // if (await canLaunch('abhivyakti@iiitdmj.ac.in')) {
                launch(
                    'https://mail.google.com/mail/?view=cm&fs=1&to=abhivyakti@iiitdmj.ac.in');
                // }
              },
              child: Text(
                'abhivyakti@iiitdmj.ac.in',
                style: subBodyStyle!.copyWith(color: kRed),
              ),
            ),
            SizedBox(height: space.height * 2),
            Row(
              children: [
                Container(
                  height: size.height,
                  width: size.width,
                  child: Image.asset(IconsData.iiitAsset),
                ),
                SizedBox(width: 20),
                Container(
                  height: size.height,
                  width: size.width,
                  child: SvgPicture.asset('assets/svg/abhivyakti.svg'),
                ),
              ],
            ),
          ],
        ),
      );
}

class SubHead extends StatelessWidget {
  const SubHead({
    Key? key,
    this.titleStyle,
    this.subTitleStyle,
    this.width,
    this.hSpace,
  }) : super(key: key);

  final TextStyle? titleStyle;
  final TextStyle? subTitleStyle;
  final double? width;
  final double? hSpace;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          Text(
            'ABHIVYAKTI - THE ARTS CLUB',
            style: titleStyle,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Social(
                textStyle: subTitleStyle,
                url: 'https://www.instagram.com/abhivyakti_iiitdmj/?hl=en',
                name: 'Instagram',
                color: kRed2,
              ),
              SizedBox(width: hSpace),
              Social(
                textStyle: subTitleStyle,
                name: 'Discord',
                color: kBlue,
                url: 'https://discord.gg/N6tfdvg5',
              ),
              SizedBox(width: hSpace),
              Social(
                textStyle: subTitleStyle,
                name: 'FaceBook',
                url: 'https://www.facebook.com/abhivyakti.iiit/',
                color: kBlue2,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Social extends StatelessWidget {
  const Social({
    Key? key,
    required this.url,
    required this.name,
    required this.color,
    this.textStyle,
  }) : super(key: key);

  final String url;
  final String name;
  final Color color;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (await canLaunch('$url')) launch('$url');
      },
      child: Text(
        '$name',
        style: textStyle!.copyWith(color: color),
      ),
    );
  }
}
