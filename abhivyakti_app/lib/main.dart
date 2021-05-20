import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abhivyakti',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isTapped ? Color(0xFFFF2C2C) : Colors.white,
      body: ResponsiveBuilder(
        builder: (context, sizeInfo) {
          return InkWell(
            onTap: () {
              setState(() {
                // isTapped = true;
                isTapped = !isTapped;
              });
            },
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Center(
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          duration: Duration(milliseconds: 300),
                          bottom: isTapped ? -32 : 0,
                          left: isTapped ? 28 : 0,
                          right: isTapped ? -28 : 0,
                          child: AnimatedOpacity(
                            duration: Duration(milliseconds: 400),
                            opacity: isTapped ? 1 : 0,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              child: SvgPicture.asset(
                                'assets/svg/abhivyakti-text-1.svg',
                                fit: BoxFit.contain,
                                color: Color(0xFFE5E5E5),
                              ),
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          duration: Duration(microseconds: 300),
                          opacity: isTapped ? 0 : 1,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 40),
                            child: SvgPicture.asset(
                              'assets/svg/abhivyakti-text-2.svg',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          duration: Duration(milliseconds: 300),
                          top: isTapped ? -32 : 0,
                          left: isTapped ? -28 : 0,
                          right: isTapped ? 28 : 0,
                          child: AnimatedOpacity(
                            duration: Duration(milliseconds: 400),
                            opacity: isTapped ? 1 : 0,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              child: SvgPicture.asset(
                                'assets/svg/abhivyakti-text-3.svg',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Website currently under construction',
                      style: TextStyle(
                        color: isTapped ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Lufga',
                        fontSize:
                            sizeInfo.deviceScreenType == DeviceScreenType.mobile
                                ? 20
                                : 30,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () async {
                        if (await canLaunch(
                            'https://www.instagram.com/abhivyakti_iiitdmj/'))
                          await launch(
                              'https://www.instagram.com/abhivyakti_iiitdmj/');
                      },
                      child: Text(
                        'INSTAGRAM',
                        style: TextStyle(
                          color: isTapped ? Colors.white : Color(0xFFFF2C2C),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Lufga',
                          fontSize: sizeInfo.deviceScreenType ==
                                  DeviceScreenType.mobile
                              ? 20
                              : 30,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
