import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ResponsiveBuilder(
      builder: (context, sizeInfo) {
        return Column(
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: Stack(
                  children: [
                    Positioned(
                      bottom: -32,
                      left: 28,
                      right: -28,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        child: SvgPicture.asset(
                          'assets/svg/abhivyakti-text-1.svg',
                          fit: BoxFit.contain,
                          color: Color(0xFFE5E5E5),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      child: SvgPicture.asset(
                        'assets/svg/abhivyakti-text-2.svg',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      top: -32,
                      left: -28,
                      right: 28,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        child: SvgPicture.asset(
                          'assets/svg/abhivyakti-text-3.svg',
                          fit: BoxFit.contain,
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
                child: Text(
                  'Website currently under construction',
                  style: TextStyle(
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
                child: Text(
                  'INSTAGRAM',
                  style: TextStyle(
                    color: Color(0xFFFF2C2C),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lufga',
                    fontSize:
                        sizeInfo.deviceScreenType == DeviceScreenType.mobile
                            ? 20
                            : 30,
                  ),
                ),
              ),
            )
          ],
        );
      },
    ));
  }
}
