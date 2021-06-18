import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/icons.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Team extends StatelessWidget {
  const Team({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 150, right: 150, top: 50),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Spacer(),
                IconsData.teamDoodle,
                SizedBox(width: 20),
              ],
            ),
            Column(
              children: [
                Text(
                  'THE TEAM',
                  style: kTitle,
                ),
                SizedBox(height: 40),
                Text(
                  'This is us.',
                  style: kBody,
                ),
              ],
            ),
            SizedBox(height: 100),
          ]),
    );
  }
}

class Commitee extends StatelessWidget {
  const Commitee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 150, right: 150, top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Office Commitee',
            style: kHeading,
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
