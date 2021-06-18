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

  Widget contactTile(String name, String id) => Row(
        children: [
          Text(
            '$name',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
          SizedBox(width: 30),
          Text(
            '$id',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 150, right: 150, top: 50, bottom: 150),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Office Commitee',
            style: kHeading,
          ),
          SizedBox(height: 100),
          Center(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    contactTile('Abhijay Thachery  ', '2018501@iiitdmj.ac.in'),
                    SizedBox(width: 30),
                    contactTile(
                        'Anoop Jacob         ', '2018507@iiitdmj.ac.in'),
                    SizedBox(width: 30),
                    contactTile('Madhura Kulkarni ', '2018515@iiitdmj.ac.in'),
                  ],
                ),
                SizedBox(width: 230),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    contactTile('Tanishi Gola', '2019523@iiitdmj.ac.in'),
                    SizedBox(width: 30),
                    contactTile('Vishnu R      ', '2019524@iiitdmj.ac.in'),
                    SizedBox(width: 30),
                    contactTile('Ruchira B     ', '2019513@iiitdmj.ac.in'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
