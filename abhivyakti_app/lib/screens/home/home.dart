import 'dart:math' as math;
import 'package:abhivyakti_app/core/icons.dart';
import 'package:abhivyakti_app/screens/home/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late Animation<double>? _animation;
  late AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    _animation = Tween<double>(begin: 0, end: 2 * math.pi).animate(
        CurvedAnimation(parent: _controller!, curve: Curves.easeInOut));
  }

  onTap() {
    if (_controller!.isDismissed)
      _controller!.forward();
    else
      _controller!.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: content(
        isMobile: true,
        showSideBar: false,
        bodyStyle: kTitleMobile,
        bodyStyle2: kBody0Mobile,
        size: Size(10, 10),
      ),
      tablet: content(
        showSideBar: true,
        sideBarSize: Size(80, displayHeight(context)),
        iconSize: Size(30, 30),
        iconSpace: 30,
        size: Size(25, 25),
        bodyStyle: kTitleTablet,
        bodyStyle2: kBody0Tablet,
      ),
      desktop: content(
        sideBarSize: Size(100, displayHeight(context)),
        iconSize: Size(40, 40),
        iconSpace: 70,
        size: Size(50, 50),
        bodyStyle: kTitle,
        bodyStyle2: kBody0,
      ),
    );
  }

  Widget content({
    bool? isMobile = false,
    TextStyle? bodyStyle,
    TextStyle? bodyStyle2,
    double iconSpace = 0,
    bool showSideBar = true,
    Size size = const Size(0, 0),
    Size iconSize = const Size(0, 0),
    Size sideBarSize = const Size(0, 0),
  }) =>
      AnimatedBuilder(
        animation: _animation!,
        builder: (context, child) {
          return Transform.rotate(
            angle: _animation!.value,
            child: child,
          );
        },
        child: Container(
          constraints: BoxConstraints(
            maxHeight: isMobile! ? 500 : displayHeight(context),
          ),
          child: Stack(
            children: [
              if (showSideBar)
                SideBar(
                  size: sideBarSize,
                  iconSize: iconSize,
                  iconSpacing: iconSpace,
                  onTap: onTap,
                ),
              Container(
                margin: EdgeInsets.only(left: sideBarSize.width),
                height: displayHeight(context),
                child: Column(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Logo(),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 4,
                                              child: Container(
                                                color: Colors.black,
                                                child: Column(
                                                  children: [
                                                    Expanded(
                                                      child: SvgPicture.asset(
                                                        IconsData.leafAsset,
                                                        height: displayHeight(
                                                                context) /
                                                            9,
                                                        width: 300,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Text(
                                                          'Art',
                                                          style: bodyStyle!
                                                              .copyWith(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 6,
                                              child: InkWell(
                                                // onTap: () {
                                                //   widget.scrollController!.animateTo(
                                                //       3707,
                                                //       duration: Duration(
                                                //           milliseconds: 1600),
                                                //       curve: Curves.ease);
                                                // },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                      top: BorderSide(
                                                        width: 1,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'News ,',
                                                          style: bodyStyle2!
                                                              .copyWith(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        Text(
                                                          'Events',
                                                          style: bodyStyle2
                                                              .copyWith(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        Text(
                                                          '& More',
                                                          style: bodyStyle2
                                                              .copyWith(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: InkWell(
                                // onTap: () {
                                //   widget.scrollController!.animateTo(754,
                                //       duration: Duration(milliseconds: 400),
                                //       curve: Curves.ease);
                                // },
                                child: Container(
                                  color: kRed,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 150,
                                        right: -80,
                                        child: SvgPicture.asset(
                                          IconsData.logoAsset,
                                          height: (isMobile
                                                  ? 500
                                                  : displayHeight(context)) *
                                              (1 / 3),
                                          width: displayWidth(context) / 6,
                                        ),
                                      ),
                                      Positioned(
                                        top: 20,
                                        right: 10,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'About the',
                                              style: bodyStyle2.copyWith(
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              'club',
                                              style: bodyStyle2.copyWith(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              flex: 3,
                              child: InkWell(
                                // onTap: () {
                                //   widget.scrollController!.animateTo(5172,
                                //       duration: Duration(milliseconds: 2000),
                                //       curve: Curves.ease);
                                // },
                                child: Container(
                                  color: kRed,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(width: size.width),
                                      Flexible(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Looking to',
                                                  style: bodyStyle2.copyWith(
                                                    color: Colors.white,
                                                  )),
                                              Text('join the',
                                                  style: bodyStyle2.copyWith(
                                                    color: Colors.white,
                                                  )),
                                              Text('club?',
                                                  style: bodyStyle2.copyWith(
                                                    color: Colors.white,
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: size.width * 0.12),
                                      Flexible(
                                        child: SvgPicture.asset(
                                          IconsData.balloonAsset,
                                          height: (isMobile
                                                  ? 500
                                                  : displayHeight(context)) /
                                              6,
                                          width: displayWidth(context) / 8,
                                        ),
                                      ),
                                      SizedBox(width: size.width * 0.4),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: InkWell(
                                // onTap: () {
                                //   widget.scrollController!.animateTo(1467,
                                //       duration: Duration(milliseconds: 800),
                                //       curve: Curves.ease);
                                // },
                                child: Container(
                                  color: Colors.black,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        right: 0,
                                        bottom: -10,
                                        left: 0,
                                        child: SvgPicture.asset(
                                          IconsData.grassAsset,
                                          height: (isMobile
                                                  ? 500
                                                  : displayHeight(context)) /
                                              3,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Text(
                                        'Gallery',
                                        style: bodyStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

class Logo extends StatelessWidget {
  Logo({Key? key}) : super(key: key);

  final Widget image1 = SvgPicture.asset(
    'assets/svg/abhivyakti-text-1.svg',
    color: Color(0xFFE5E5E5),
    fit: BoxFit.contain,
  );
  final Widget image2 = SvgPicture.asset(
    'assets/svg/abhivyakti-text-3.svg',
    color: kRed,
    fit: BoxFit.contain,
  );
  final Widget image3 = SvgPicture.asset(
    'assets/svg/abhivyakti-text-3.svg',
    fit: BoxFit.contain,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: -32,
            left: 28,
            right: -28,
            top: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: image1,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 40), child: image2),
          ),
          Positioned(
            top: -32,
            left: -28,
            right: 28,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: image3,
            ),
          ),
        ],
      ),
    );
  }
}
