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

  Widget nameText(String name) => Text(
        '$name',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
      );
  Widget idText(String id) => Text(
        '$id',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 150, right: 150, top: 50, bottom: 150),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              nameText('Abhijay Thachery'),
              nameText('Anoop Jacob'),
              nameText('Madhura Kulkarni'),
            ],
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              idText('2018501@iiitdmj.ac.in'),
              idText('2018507@iiitdmj.ac.in'),
              idText('2018515@iiitdmj.ac.in'),
            ],
          ),
          Expanded(child: SizedBox()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              nameText('Tanishi Gola'),
              nameText('Vishnu R'),
              nameText('Ruchira B'),
            ],
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              idText('2019523@iiitdmj.ac.in'),
              idText('2019524@iiitdmj.ac.in'),
              idText('2019513@iiitdmj.ac.in'),
            ],
          ),
        ],
      ),
    );
  }
}
