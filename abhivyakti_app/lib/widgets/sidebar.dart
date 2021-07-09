import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/icons.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SideBar extends StatelessWidget {
  final Function()? onTap;
  final Size? size;

  final bool? hide;
  const SideBar({
    Key? key,
    this.size,
    this.onTap,
    this.hide,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool shouldHide = hide!;
    Size iconSize =
        kIsMobile(context) ? Size.zero : Size.square(size!.width * 0.6);
    double iconSpacing = kIsMobile(context)
        ? 0
        : kIsTablet(context)
            ? 40
            : 70;
    return AnimatedContainer(
      duration: kSideBarDuration,
      width: shouldHide ? 0 : size!.width,
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
            width: iconSize.width,
            height: iconSize.height,
            margin: EdgeInsets.only(top: iconSize.height * 0.8),
            child: SvgPicture.asset('assets/svg/logo1.svg'),
          ),
          Expanded(child: SizedBox()),
          InkWell(
            onTap: onTap,
            child: Container(
              child: SvgPicture.asset(
                IconsData.rollAsset,
                height: iconSize.height,
                width: iconSize.width,
              ),
            ),
          ),
          SizedBox(height: iconSpacing),
          InkWell(
            // onTap: () {
            //   scrollController.animateTo(1467,
            //       duration: Duration(milliseconds: 800),
            //       curve: Curves.ease);
            // },
            child: Container(
              child: SvgPicture.asset(
                IconsData.galleryAsset,
                height: iconSize.height,
                width: iconSize.width,
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
                height: iconSize.height,
                width: iconSize.width,
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
                height: iconSize.height,
                width: iconSize.width,
              ),
            ),
          ),
          SizedBox(height: iconSpacing),
        ],
      ),
    );
  }
}
