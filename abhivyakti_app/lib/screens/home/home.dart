import 'package:abhivyakti_app/core/icons.dart';
import 'package:flutter/material.dart';
import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: displayWidth(context) * 0.13),
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
                            child: Container(),
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
                                              height: 78,
                                              width: 184,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.topCenter,
                                              child: Text(
                                                'Art',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 47,
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
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'News ,',
                                              style: TextStyle(
                                                fontSize: 30,
                                              ),
                                            ),
                                            Text(
                                              'Events',
                                              style: TextStyle(
                                                fontSize: 30,
                                              ),
                                            ),
                                            Text(
                                              '& More...',
                                              style: TextStyle(
                                                fontSize: 30,
                                              ),
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
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: kRed,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 150,
                            right: -80,
                            child: SvgPicture.asset(
                              IconsData.logoAsset,
                              height: 300,
                              width: 300,
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
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'club',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
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
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: kRed,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 50),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Looking to',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                                Text(
                                  'join the',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                                Text(
                                  'club?',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 150),
                          SvgPicture.asset(
                            IconsData.balloonAsset,
                            height: 169,
                            width: 62,
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.black,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            bottom: -10,
                            child: SvgPicture.asset(IconsData.grassAsset),
                          ),
                          Text(
                            'Gallery',
                            style: TextStyle(fontSize: 60, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
