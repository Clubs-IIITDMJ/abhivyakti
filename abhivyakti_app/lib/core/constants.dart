import 'package:abhivyakti_app/core/responsive.dart';
import 'package:flutter/material.dart';

// ---------------------------------
TextStyle kTitle = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 50,
  fontWeight: FontWeight.w300,
);
TextStyle kTitleTablet = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 30,
  fontWeight: FontWeight.w300,
);
TextStyle kTitleMobile = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 20,
  fontWeight: FontWeight.w300,
);

// ---------------------------------

TextStyle kHeading = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 36,
  fontWeight: FontWeight.w300,
);
TextStyle kHeadingTablet = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 25,
  fontWeight: FontWeight.w300,
);
TextStyle kHeadingMobile = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 18,
  fontWeight: FontWeight.w300,
);

// ---------------------------------

TextStyle kBody0 = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 22,
  fontWeight: FontWeight.w300,
);
TextStyle kBody0Tablet = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 18,
  fontWeight: FontWeight.w300,
);
TextStyle kBody0Mobile = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 14,
  fontWeight: FontWeight.w300,
);

// ---------------------------------

TextStyle kBody = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 20,
  fontWeight: FontWeight.w300,
);
TextStyle kBodyTablet = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 15,
  fontWeight: FontWeight.w300,
);
TextStyle kBodyMobile = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 12,
  fontWeight: FontWeight.w300,
);

// ---------------------------------

TextStyle kSubBody = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 15,
  fontWeight: FontWeight.w300,
);
TextStyle kSubBodyTablet = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 10,
  fontWeight: FontWeight.w300,
);
TextStyle kSubBodyMobile = TextStyle(
  fontFamily: 'Lufga',
  fontSize: 8,
  fontWeight: FontWeight.w300,
);

Color kRed = Color(0XFFFF2C2C);
Color kRed2 = Color(0XFFFD0105);
Color kBlue = Color(0XFF5865F2);
Color kBlue2 = Color(0XFF2D88FF);

/** Paddings */
double kSideBarWidth(context) {
  if (displayWidth(context) <= 500) return 0;
  return displayWidth(context) * 0.07;
}

EdgeInsets kSideBarPadding(side) => EdgeInsets.only(left: side);

/** Duration */
const kSideBarDuration = Duration(milliseconds: 250);
const kduration = Duration(milliseconds: 800);

/**bool */
bool kIsMobile(context) => displayWidth(context) <= 500;

bool kIsTablet(context) => displayWidth(context) <= 900;
