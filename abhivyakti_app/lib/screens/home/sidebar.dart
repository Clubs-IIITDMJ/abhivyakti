import 'package:abhivyakti_app/core/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SideBar extends StatelessWidget {
  final Size? size;
  final Size? iconSize;
  final double? iconSpacing;
  final Function()? onTap;

  const SideBar({
    Key? key,
    this.size,
    this.iconSize,
    this.iconSpacing,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size!.width,
      height: size!.height,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000),
            offset: const Offset(2.0, 0.0),
            blurRadius: 24.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: iconSize!.width,
            height: iconSize!.height,
            margin: EdgeInsets.only(top: iconSize!.height * 0.8),
            child: SvgPicture.asset('assets/svg/logo1.svg'),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: onTap,
                  child: Container(
                    child: SvgPicture.asset(
                      IconsData.rollAsset,
                      height: iconSize!.height,
                      width: iconSize!.width,
                    ),
                  ),
                ),
                SizedBox(height: iconSpacing),
                InkWell(
                  // onTap: () {
                  //   scrollController!.animateTo(1467,
                  //       duration: Duration(milliseconds: 800),
                  //       curve: Curves.ease);
                  // },
                  child: Container(
                    child: SvgPicture.asset(
                      IconsData.galleryAsset,
                      height: iconSize!.height,
                      width: iconSize!.width,
                    ),
                  ),
                ),
                SizedBox(height: iconSpacing),
                InkWell(
                  onTap: () async {
                    if (await canLaunch(
                        'https://www.instagram.com/abhivyakti_iiitdmj')) {
                      launch('https://www.instagram.com/abhivyakti_iiitdmj');
                    }
                  },
                  child: Container(
                    child: SvgPicture.asset(
                      IconsData.instaAsset,
                      height: iconSize!.height,
                      width: iconSize!.width,
                    ),
                  ),
                ),
                SizedBox(height: iconSpacing),
                InkWell(
                  onTap: () async {
                    // if (await canLaunch('abhivyakti@iiitdmj.ac.in')) {
                    launch(
                        'https://mail.google.com/mail/?view=cm&fs=1&to=abhivyakti@iiitdmj.ac.in');
                    // }
                  },
                  child: Container(
                    child: SvgPicture.asset(
                      IconsData.mailAsset,
                      height: iconSize!.height,
                      width: iconSize!.width,
                    ),
                  ),
                ),
                SizedBox(height: iconSpacing),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
