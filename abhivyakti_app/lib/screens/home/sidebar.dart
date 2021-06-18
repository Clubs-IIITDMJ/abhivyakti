import 'package:abhivyakti_app/core/icons.dart';
import 'package:flutter/material.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context) * 0.13,
      height: displayHeight(context),
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
            width: 62,
            height: 53,
            margin: EdgeInsets.all(40),
            child: Image.asset('assets/images/logo1.png'),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: SvgPicture.asset(IconsData.rollAsset),
                ),
                SizedBox(height: 105),
                Container(
                  child: SvgPicture.asset(IconsData.galleryAsset),
                ),
                SizedBox(height: 105),
                Container(
                  child: SvgPicture.asset(IconsData.instaAsset),
                ),
                SizedBox(height: 105),
                Container(
                  child: SvgPicture.asset(IconsData.mailAsset),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
