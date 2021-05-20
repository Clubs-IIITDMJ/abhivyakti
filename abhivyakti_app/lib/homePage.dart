import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math' as math;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  bool _isTapped = false, _press = false;
  SvgPicture? image1, image2, image3;
  Image? image4, image5, image6;

  late Animation<double>? _animation;
  late AnimationController? _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    _animation = Tween<double>(begin: 0, end: 2 * math.pi)
        .animate(CurvedAnimation(parent: _controller!, curve: Curves.easeInOut))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed)
              setState(() {
                _controller!.reset();
              });
          });

    image1 = SvgPicture.asset(
      'assets/svg/abhivyakti-text-1.svg',
      color: Color(0xFFE5E5E5),
      fit: BoxFit.contain,
    );
    image2 = SvgPicture.asset(
      'assets/svg/abhivyakti-text-2.svg',
      fit: BoxFit.contain,
    );
    image3 = SvgPicture.asset(
      'assets/svg/abhivyakti-text-3.svg',
      fit: BoxFit.contain,
    );
    image4 = Image.asset(
      'assets/images/Abhivyakti.png',
      color: Color(0xFFE5E5E5),
      fit: BoxFit.contain,
    );
    image5 = Image.asset(
      'assets/images/Abhivyakti-1.png',
      fit: BoxFit.contain,
    );
    image6 = Image.asset(
      'assets/images/Abhivyakti-2.png',
      fit: BoxFit.contain,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(image4!.image, context);
    precacheImage(image5!.image, context);
    precacheImage(image6!.image, context);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizeInfo) {
          bool p = sizeInfo.isMobile;

          return Container(
            color: _isTapped ? Color(0xFFFF2C2C) : Colors.white,
            child: InkWell(
              onTap: () {
                setState(() {
                  // _isTapped = true;
                  _isTapped = !_isTapped;
                });
              },
              child: AnimatedBuilder(
                animation: _animation!,
                builder: (context, _) {
                  bool p = sizeInfo.isDesktop;
                  return Transform.rotate(
                    angle: _animation!.value,
                    child: Column(
                      children: [
                        Container(
                          height: size.height * (4 / 8),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              AnimatedPositioned(
                                curve: Curves.easeInOut,
                                duration: Duration(milliseconds: 300),
                                bottom: _isTapped ? -32 : 0,
                                left: _isTapped ? 28 : 0,
                                right: _isTapped ? -28 : 0,
                                top: 0,
                                child: AnimatedOpacity(
                                  curve: Curves.easeInOut,
                                  duration: Duration(milliseconds: 400),
                                  opacity: _isTapped ? 1 : 0,
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 40),
                                    child: p ? image4 : image1,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                top: 0,
                                bottom: 0,
                                child: AnimatedOpacity(
                                  curve: Curves.easeInOut,
                                  duration: Duration(microseconds: 300),
                                  opacity: _isTapped ? 0 : 1,
                                  child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 40),
                                      child: p ? image5 : image2),
                                ),
                              ),
                              AnimatedPositioned(
                                curve: Curves.easeInOut,
                                duration: Duration(milliseconds: 300),
                                top: _isTapped ? -32 : 0,
                                left: _isTapped ? -28 : 0,
                                right: _isTapped ? 28 : 0,
                                bottom: 0,
                                child: AnimatedOpacity(
                                  curve: Curves.easeInOut,
                                  duration: Duration(milliseconds: 400),
                                  opacity: _isTapped ? 1 : 0,
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 40),
                                    child: p ? image6 : image3,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        WIP(
                          sizeInfo: sizeInfo,
                          height: size.height,
                          isTapped: _isTapped,
                        ),
                        Container(
                          height: size.height * (1 / 8),
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
                                color: _isTapped
                                    ? Colors.white
                                    : Color(0xFFFF2C2C),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Lufga',
                                fontSize: sizeInfo.deviceScreenType ==
                                        DeviceScreenType.mobile
                                    ? 15
                                    : 30,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: OutlinedButton(
        onPressed: () {
          setState(() {
            _press = !_press;
            _controller!.forward();
          });
        },
        child: Text(
          'Do Not Press',
          style: TextStyle(
            color: _isTapped ? Colors.white : Color(0xFFFF2C2C),
            fontWeight: FontWeight.w400,
            fontFamily: 'Lufga',
          ),
        ),
      ),
    );
  }
}

class WIP extends StatelessWidget {
  final SizingInformation? sizeInfo;
  final double? height;
  final bool? isTapped;

  const WIP({Key? key, this.sizeInfo, this.height, this.isTapped = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height! * (3 / 8),
      alignment: Alignment.center,
      child: Text(
        'Website currently under construction',
        style: TextStyle(
          color: isTapped! ? Colors.white : Colors.black,
          fontWeight: FontWeight.w500,
          fontFamily: 'Lufga',
          fontSize:
              sizeInfo!.deviceScreenType == DeviceScreenType.mobile ? 15 : 30,
        ),
      ),
    );
  }
}
