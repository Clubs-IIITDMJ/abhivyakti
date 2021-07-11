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
                                  color: Colors.white,
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

class Logo extends StatefulWidget {
  Logo({Key? key}) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  bool _tap = false;

  final Widget image1 = Image.asset(
    'assets/images/Abhivyakti.png',
    color: Color(0xFFE5E5E5),
    fit: BoxFit.contain,
  );

  final Widget image2 = Image.asset(
    'assets/images/Abhivyakti.png',
    color: kRed,
    fit: BoxFit.contain,
  );

  final Widget image3 = Image.asset(
    'assets/images/Abhivyakti-2.png',
    fit: BoxFit.contain,
  );
  final Widget image4 = SvgPicture.asset(
    'assets/svg/Abhivyakti-text-2.svg',
    fit: BoxFit.contain,
  );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        // print(size);
        return InkWell(
          onTap: () {
            setState(() {
              _tap = !_tap;
            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedPositioned(
                duration: kduration,
                bottom: _tap ? -32 : 0,
                left: _tap ? 28 : 0,
                right: _tap ? -28 : 0,
                top: 0,
                child: AnimatedOpacity(
                  duration: kduration,
                  opacity: _tap ? 1 : 0,
                  child: Container(
                    height: size.maxHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: image1,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          child: Text('arts and crafts club'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: AnimatedOpacity(
                  duration: kduration,
                  opacity: _tap ? 1 : 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: image2,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: AnimatedOpacity(
                  duration: kduration,
                  opacity: _tap ? 0 : 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: image4,
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: kduration,
                top: _tap ? -32 : 0,
                left: _tap ? -28 : 0,
                right: _tap ? 28 : 0,
                bottom: 0,
                child: AnimatedOpacity(
                  duration: kduration,
                  opacity: _tap ? 1 : 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: image3,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
