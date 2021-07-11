import 'package:abhivyakti_app/core/icons.dart';
import 'package:flutter/material.dart';
import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  final Function(int)? scrollTo;
  const Home({
    Key? key,
    this.scrollTo,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: content(
        size: Size(10, 10),
        bodyStyle: kTitleMobile,
        bodyStyle2: kBody0Mobile,
      ),
      tablet: content(
        size: Size(25, 25),
        bodyStyle: kTitleTablet,
        bodyStyle2: kBody0Tablet,
      ),
      desktop: content(
        size: Size(50, 50),
        bodyStyle: kTitle,
        bodyStyle2: kBody0,
      ),
    );
  }

  Widget content({
    TextStyle? bodyStyle,
    TextStyle? bodyStyle2,
    Size size = const Size(0, 0),
  }) {
    bool isMobile = kIsMobile(context);
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      constraints: BoxConstraints(
          maxHeight: displayHeight(context) * (isMobile ? 0.6 : 1)),
      child: AnimatedPadding(
        duration: kSideBarDuration,
        padding: kSideBarPadding(kSideBarWidth(context)),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: displayHeight(context),
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          child: Column(
                            children: [
                              Expanded(
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  child: Logo(),
                                ),
                              ),
                              Expanded(
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: InkWell(
                                          onTap: () {
                                            widget.scrollTo!(3);
                                          },
                                          child: AnimatedContainer(
                                            duration:
                                                Duration(milliseconds: 300),
                                            color: Colors.black,
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: SvgPicture.asset(
                                                    IconsData.leafAsset,
                                                    height:
                                                        displayHeight(context) /
                                                            9,
                                                    width: 300,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: AnimatedContainer(
                                                    duration: Duration(
                                                        milliseconds: 300),
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Text(
                                                      'Art',
                                                      style:
                                                          bodyStyle!.copyWith(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 6,
                                        child: InkWell(
                                          onTap: () {
                                            widget.scrollTo!(4);
                                          },
                                          child: AnimatedContainer(
                                            duration:
                                                Duration(milliseconds: 300),
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
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'News ,',
                                                    style: bodyStyle2!.copyWith(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Events',
                                                    style: bodyStyle2.copyWith(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  Text(
                                                    '& More',
                                                    style: bodyStyle2.copyWith(
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
                          onTap: () {
                            widget.scrollTo!(1);
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
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
                                    crossAxisAlignment: CrossAxisAlignment.end,
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
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 3,
                        child: InkWell(
                          onTap: () {
                            widget.scrollTo!(7);
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            color: kRed,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: size.width),
                                Flexible(
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
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
                          onTap: () {
                            widget.scrollTo!(2);
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
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
                                  style:
                                      bodyStyle.copyWith(color: Colors.white),
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
      ),
    );
  }
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
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
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
