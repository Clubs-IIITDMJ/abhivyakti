import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/icons.dart';
// import 'package:abhivyakti_app/core/responsive.dart';
import 'package:abhivyakti_app/core/strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Team extends StatefulWidget {
  const Team({Key? key}) : super(key: key);

  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    double h = kSideBarWidth(context) + 20;
    return ScreenTypeLayout(
      mobile: content(
        titleStyle: kTitleMobile,
        bodyStyle: kBodyMobile,
        subBodyStyle: kSubBodyMobile,
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        profilePadding: EdgeInsets.symmetric(horizontal: 30),
        size: Size(30, 40),
        profileSize: Size(150, 150),
        vSpace: 20,
      ),
      tablet: content(
        titleStyle: kTitleTablet,
        bodyStyle: kBodyTablet,
        subBodyStyle: kSubBodyTablet,
        padding: EdgeInsets.only(left: h, right: h, top: 25),
        profilePadding: EdgeInsets.symmetric(horizontal: 30),
        size: Size(45, 70),
        profileSize: Size(150, 150),
        vSpace: 40,
      ),
      desktop: content(
        titleStyle: kTitle,
        bodyStyle: kBody,
        subBodyStyle: kSubBody,
        padding: EdgeInsets.only(left: h, right: h, top: 50),
        profilePadding: EdgeInsets.only(left: 70),
        size: Size(95, 120),
        profileSize: Size(200, 200),
        vSpace: 60,
      ),
    );
  }

  Widget content({
    EdgeInsets? padding,
    EdgeInsets? profilePadding,
    Size? size,
    Size? profileSize,
    TextStyle? titleStyle,
    TextStyle? bodyStyle,
    TextStyle? subBodyStyle,
    double? vSpace,
  }) =>
      AnimatedContainer(
        duration: Duration(milliseconds: 250),
        padding: padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Spacer(),
                AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  height: size!.height,
                  width: size.width,
                  child: IconsData.teamDoodle,
                ),
                SizedBox(width: 20),
              ],
            ),
            Column(
              children: [
                Text(
                  kTeamTitle,
                  style: titleStyle,
                ),
                SizedBox(height: vSpace! / 3),
                Text(
                  kTeamHeading,
                  style: bodyStyle,
                ),
              ],
            ),
            SizedBox(height: vSpace),
            TeamMembers(
              vSpace: 20,
              bodystyle: bodyStyle,
              subBodystyle: subBodyStyle,
              padding: profilePadding,
              size: profileSize,
            ),
            SizedBox(height: vSpace / 3),
          ],
        ),
      );
}

class TeamMembers extends StatelessWidget {
  final TextStyle? bodystyle;
  final TextStyle? subBodystyle;
  final double? vSpace;
  final Size? size;
  final EdgeInsets? padding;
  const TeamMembers({
    Key? key,
    this.bodystyle,
    this.subBodystyle,
    this.vSpace,
    this.padding,
    this.size,
  }) : super(key: key);

  Widget member(String name, String pos, String id, String url) => Column(
        children: [
          Container(
            margin: padding,
            constraints: BoxConstraints(
              maxHeight: size!.height,
              maxWidth: size!.width,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('$url'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: vSpace),
          Text(name, style: bodystyle),
          SizedBox(height: vSpace! / 2),
          Text(pos, style: subBodystyle),
          SizedBox(height: vSpace! / 2),
          Text(id, style: subBodystyle),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      crossAxisAlignment: WrapCrossAlignment.center,
      runAlignment: WrapAlignment.spaceEvenly,
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
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: content(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
        headingStyle: kHeadingMobile,
        bodyStyle: kBodyMobile,
        space: Size(20, 20),
      ),
      tablet: content(
        padding: EdgeInsets.only(left: 60, right: 60, top: 25, bottom: 40),
        headingStyle: kHeadingTablet,
        bodyStyle: kBodyTablet,
        space: Size(25, 25),
      ),
      desktop: content(
        padding: EdgeInsets.only(left: 70, right: 70, top: 50, bottom: 80),
        headingStyle: kHeading,
        bodyStyle: kBody,
        space: Size(30, 30),
      ),
    );
  }

  Widget nameText(String name, TextStyle style) => Text(
        '$name',
        style: style.copyWith(
          fontWeight: FontWeight.w400,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
  Widget idText(String id, TextStyle style) => Text(
        '$id',
        style: style.copyWith(
          fontWeight: FontWeight.w300,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
  Widget content({
    EdgeInsets? padding,
    TextStyle? headingStyle,
    TextStyle? bodyStyle,
    Size? space,
  }) =>
      AnimatedContainer(
        duration: Duration(milliseconds: 250),
        padding: padding,
        child: Column(
          children: [
            Text(
              'Office Commitee',
              style: headingStyle,
            ),
            SizedBox(height: space!.height),
            Container(
              child: Wrap(
                runSpacing: space.height,
                alignment: WrapAlignment.spaceEvenly,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: space.width / 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            nameText('Abhijay Thachery', bodyStyle!),
                            SizedBox(height: space.height),
                            nameText('Anoop Jacob', bodyStyle),
                            SizedBox(height: space.height),
                            nameText('Madhura Kulkarni', bodyStyle),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: space.width),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            idText('2018501@iiitdmj.ac.in', bodyStyle),
                            SizedBox(height: space.height),
                            idText('2018507@iiitdmj.ac.in', bodyStyle),
                            SizedBox(height: space.height),
                            idText('2018515@iiitdmj.ac.in', bodyStyle),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: space.width / 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            nameText('Tanishi Gola           ', bodyStyle),
                            SizedBox(height: space.height),
                            nameText('Vishnu R', bodyStyle),
                            SizedBox(height: space.height),
                            nameText('Ruchira B', bodyStyle),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: space.width),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            idText('2019523@iiitdmj.ac.in', bodyStyle),
                            SizedBox(height: space.height),
                            idText('2019524@iiitdmj.ac.in', bodyStyle),
                            SizedBox(height: space.height),
                            idText('2019513@iiitdmj.ac.in', bodyStyle),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
