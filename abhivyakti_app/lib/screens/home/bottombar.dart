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
  int type = 0;
  double _top = 0, _left = 0, _right = 0, _width = 0;
  double _h = 0, _w = 0;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        if (size.isMobile) {
          type = 2;
          _width = 20;
          _left = 10;
          _top = 20;
          _right = 40;
          _w = 30;
          _h = 50;
        } else if (size.isTablet) {
          type = 1;
          _width = 40;
          _left = 25;
          _top = 75;
          _right = 75;
          _w = 47;
          _h = 78;
        } else {
          type = 0;
          _width = 100;
          _left = 50;
          _top = 100;
          _right = 100;
          _w = 95;
          _h = 120;
        }
        return Container(
          padding: EdgeInsets.only(left: _left, right: _right, top: _top),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.black12, width: 1),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'CONTACT US',
                    style: TextStyle(
                        fontSize: type == 2
                            ? 18
                            : type == 1
                                ? 25
                                : 48),
                  ),
                  SizedBox(width: _width),
                  Container(
                    height: _h,
                    width: _w,
                    child: IconsData.sharkDoodle,
                  ),
                ],
              ),
              SizedBox(
                  height: type == 2
                      ? 17
                      : type == 1
                          ? 35
                          : 70),
              subHead(type: type),
              SizedBox(
                height: type == 2
                    ? 8
                    : type == 1
                        ? 10
                        : 12,
              ),
              Text(
                'PDPM IIITDM JABALPUR',
                style: TextStyle(
                  fontSize: type == 2
                      ? 12
                      : type == 1
                          ? 16
                          : 24,
                ),
              ),
              SizedBox(
                  height: type == 2
                      ? 4
                      : type == 1
                          ? 8
                          : 30),
              Text(
                'abhivyakti.iiitdmj.ac.in',
                style: TextStyle(
                    fontSize: type == 2
                        ? 10
                        : type == 1
                            ? 14
                            : 20,
                    color: kRed),
              ),
              SizedBox(
                  height: type == 2
                      ? 12
                      : type == 1
                          ? 25
                          : 50),
              Row(
                children: [
                  Container(
                    height: _h,
                    width: _w,
                    child: Image.asset(IconsData.iiitAsset),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: _h,
                    width: _w,
                    child: SvgPicture.asset('assets/svg/abhivyakti.svg'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class subHead extends StatelessWidget {
  const subHead({
    Key? key,
    required this.type,
  }) : super(key: key);

  final int type;

  @override
  Widget build(BuildContext context) {
    return displayWidth(context) > 690
        ? Row(
            children: [
              Text(
                'ABHIVYAKTI - THE ARTS CLUB',
                style: TextStyle(
                    fontSize: type == 2
                        ? 12
                        : type == 1
                            ? 18
                            : 30),
              ),
              Spacer(),
              social(
                type: type,
                url: 'https://www.instagram.com/abhivyakti_iiitdmj/?hl=en',
                name: 'Instagram',
                color: kRed2,
              ),
              SizedBox(width: 40),
              social(
                type: type,
                name: 'Discord',
                color: kBlue,
                url: 'https://discord.gg/N6tfdvg5',
              ),
              SizedBox(width: 40),
              social(
                type: type,
                name: 'FaceBook',
                url: 'https://www.facebook.com/abhivyakti.iiit/',
                color: kBlue2,
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ABHIVYAKTI - THE ARTS CLUB',
                style: TextStyle(
                    fontSize: type == 2
                        ? 12
                        : type == 1
                            ? 18
                            : 30),
              ),
              Row(
                children: [
                  social(
                    type: type,
                    url: 'https://www.instagram.com/abhivyakti_iiitdmj/?hl=en',
                    name: 'Instagram',
                    color: kRed2,
                  ),
                  SizedBox(width: 40),
                  social(
                    type: type,
                    name: 'Discord',
                    color: kBlue,
                    url: 'https://discord.gg/N6tfdvg5',
                  ),
                  SizedBox(width: 40),
                  social(
                    type: type,
                    name: 'FaceBook',
                    url: 'https://www.facebook.com/abhivyakti.iiit/',
                    color: kBlue2,
                  ),
                ],
              ),
            ],
          );
  }
}

class social extends StatelessWidget {
  const social({
    Key? key,
    required this.type,
    required this.url,
    required this.name,
    required this.color,
  }) : super(key: key);

  final int type;
  final String url;
  final String name;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunch('$url')) launch('$url');
      },
      child: Text(
        '$name',
        style: TextStyle(
            fontSize: type == 2
                ? 12
                : type == 1
                    ? 16
                    : 24,
            color: color),
      ),
    );
  }
}
