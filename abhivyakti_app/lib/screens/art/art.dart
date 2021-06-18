import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/icons.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Art extends StatelessWidget {
  const Art({Key? key}) : super(key: key);

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
                IconsData.artDoodle,
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'ART',
                        style: kTitle,
                      ),
                      SizedBox(height: 40),
                      Text(
                        'Artworks from the members of the club.',
                        style: kBody,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 100),
            Container(
              height: 820,
              color: Colors.green,
              padding: EdgeInsets.all(40),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [],
              ),
            ),
          ]),
    );
  }
}
