import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/icons.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Team extends StatefulWidget {
  const Team({Key? key}) : super(key: key);

  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  int type = 0;
  double _height = 0,
      _width = 0,
      _top = 0,
      _left = 0,
      _right = 0,
      _height1 = 0,
      _height2 = 0;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      if (size.isMobile) {
        type = 2;
        _width = 30;
        _height = 50;
        _height1 = 20;
        _height2 = 10;
        _left = 30;
        _right = 30;
        _top = 10;
      } else if (size.isTablet) {
        type = 1;
        _width = 47;
        _height = 78;
        _height1 = 40;
        _height2 = 15;
        _left = 75;
        _right = 75;
        _top = 25;
      } else {
        type = 0;
        _width = 95;
        _height = 120;
        _height1 = 100;
        _height2 = 25;
        _left = 150;
        _right = 150;
        _top = 50;
      }
      return Container(
        padding: EdgeInsets.only(left: _left, right: _right, top: _top),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Spacer(),
                  Container(
                    height: _height,
                    width: _width,
                    child: IconsData.teamDoodle,
                  ),
                  SizedBox(width: 20),
                ],
              ),
              Column(
                children: [
                  Text(
                    'THE TEAM',
                    style: type == 2
                        ? kTitleMobile
                        : type == 1
                            ? kTitleTablet
                            : kTitle,
                  ),
                  SizedBox(height: _height2),
                  Text(
                    'This is us.',
                    style: type == 2
                        ? kBodyMobile
                        : type == 1
                            ? kBodyTablet
                            : kBody,
                  ),
                ],
              ),
              SizedBox(height: _height1),
              TeamMembers(type: type),
              SizedBox(height: _height1),
            ]),
      );
    });
  }
}

class TeamMembers extends StatelessWidget {
  final int? type;
  const TeamMembers({Key? key, this.type}) : super(key: key);

  Widget member(String name, String pos, String id, String url) => Column(
        children: [
          Container(
            constraints: BoxConstraints(
              maxHeight: 200,
              maxWidth: 200,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('$url'),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(name, style: kBody),
          SizedBox(height: 8),
          Text(pos, style: kSubBody),
          SizedBox(height: 8),
          Text(id, style: kSubBody),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return type != 2 && displayWidth(context) > 848
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              member('Suchir Sharma', 'Coordinator', '2019522@iiitdmj.ac.in',
                  'assets/images/coco.png'),
              member('Dr. Harpreet Singh', 'Faculty in charge', '',
                  'assets/images/faculty.png'),
              member('Bhadra Balu,', 'Co-Coordinator', '2019504@iiitdmj.ac.in',
                  'assets/images/coco1.png'),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              member('Suchir Sharma', 'Coordinator', '2019522@iiitdmj.ac.in',
                  'assets/images/coco.png'),
              member('Dr. Harpreet Singh', 'Faculty in charge', '',
                  'assets/images/faculty.png'),
              member('Bhadra Balu,', 'Co-Coordinator', '2019504@iiitdmj.ac.in',
                  'assets/images/coco1.png'),
            ],
          );
  }
}

class Commitee extends StatefulWidget {
  const Commitee({Key? key}) : super(key: key);

  @override
  _CommiteeState createState() => _CommiteeState();
}

class _CommiteeState extends State<Commitee> {
  int type = 0;
  double _left = 0, _right = 0, _top = 0, _bottom = 0, _width = 0, _height = 0;

  Widget nameText(String name) => Text(
        '$name',
        style: TextStyle(
          fontSize: type == 0
              ? displayWidth(context) < 1008
                  ? 18
                  : 22
              : type == 1
                  ? displayWidth(context) < 688
                      ? 12
                      : 15
                  : 12,
          fontWeight: FontWeight.w400,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
  Widget idText(String id) => Text(
        '$id',
        style: TextStyle(
          fontSize: type == 0
              ? displayWidth(context) < 1008
                  ? 18
                  : 22
              : type == 1
                  ? displayWidth(context) < 688
                      ? 12
                      : 15
                  : 12,
          fontWeight: FontWeight.w300,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        if (size.isMobile) {
          type = 2;
          _width = 10;
          _height = 20;
          _left = 30;
          _right = 30;
          _top = 10;
          _bottom = 20;
        } else if (size.isTablet) {
          type = 1;
          _width = 15;
          _height = 40;
          _left = 90;
          _right = 60;
          _top = 25;
          _bottom = 40;
        } else {
          type = 0;
          _width = 25;
          _height = 100;
          _left = 100;
          _right = 80;
          _top = 50;
          _bottom = 150;
        }
        return Container(
            padding: EdgeInsets.only(
                left: _left, right: _right, top: _top, bottom: _bottom),
            child: Column(
              children: [
                Text(
                  'Office Commitee',
                  style: type == 0
                      ? kHeading
                      : type == 1
                          ? kHeadingTablet
                          : kHeadingMobile,
                ),
                SizedBox(height: _height),
                type != 2 && displayWidth(context) >= 620
                    ? Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              nameText('Abhijay Thachery'),
                              SizedBox(height: 30),
                              nameText('Anoop Jacob'),
                              SizedBox(height: 30),
                              nameText('Madhura Kulkarni'),
                            ],
                          ),
                          SizedBox(width: _width),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              idText('2018501@iiitdmj.ac.in'),
                              SizedBox(height: 30),
                              idText('2018507@iiitdmj.ac.in'),
                              SizedBox(height: 30),
                              idText('2018515@iiitdmj.ac.in'),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              nameText('Tanishi Gola'),
                              SizedBox(height: 30),
                              nameText('Vishnu R'),
                              SizedBox(height: 30),
                              nameText('Ruchira B'),
                            ],
                          ),
                          SizedBox(width: _width),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              idText('2019523@iiitdmj.ac.in'),
                              SizedBox(height: 30),
                              idText('2019524@iiitdmj.ac.in'),
                              SizedBox(height: 30),
                              idText('2019513@iiitdmj.ac.in'),
                            ],
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              nameText('Abhijay Thachery'),
                              SizedBox(height: 10),
                              nameText('Anoop Jacob'),
                              SizedBox(height: 10),
                              nameText('Madhura Kulkarni'),
                              SizedBox(height: 10),
                              nameText('Tanishi Gola'),
                              SizedBox(height: 10),
                              nameText('Vishnu R'),
                              SizedBox(height: 10),
                              nameText('Ruchira B'),
                            ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              idText('2018501@iiitdmj.ac.in'),
                              SizedBox(height: 10),
                              idText('2018507@iiitdmj.ac.in'),
                              SizedBox(height: 10),
                              idText('2018515@iiitdmj.ac.in'),
                              SizedBox(height: 10),
                              idText('2019523@iiitdmj.ac.in'),
                              SizedBox(height: 10),
                              idText('2019524@iiitdmj.ac.in'),
                              SizedBox(height: 10),
                              idText('2019513@iiitdmj.ac.in'),
                            ],
                          ),
                        ],
                      ),
              ],
            ));
      },
    );
  }
}
