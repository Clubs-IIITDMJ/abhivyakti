import 'dart:math' as math;
import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:abhivyakti_app/screens/about/about.dart';
import 'package:abhivyakti_app/screens/art/art.dart';
import 'package:abhivyakti_app/screens/gallery/gallery.dart';
import 'package:abhivyakti_app/screens/home/bottombar.dart';
import 'package:abhivyakti_app/widgets/sidebar.dart';
import 'package:abhivyakti_app/screens/new/news.dart';
import 'package:abhivyakti_app/screens/team/team.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:abhivyakti_app/screens/home/home.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> with SingleTickerProviderStateMixin {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  late Animation<double>? _animation;
  late AnimationController? _controller;

  bool _hide = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    _animation = Tween<double>(begin: 0, end: 2 * math.pi).animate(
        CurvedAnimation(parent: _controller!, curve: Curves.easeInOut));
  }

  scrollTo(int index) {
    itemScrollController.scrollTo(
      index: index,
      duration: Duration(seconds: 1 * index),
      curve: Curves.easeIn,
    );
  }

  var _screen = [
    About(),
    // Gallery(),
    // Art(),
    // News(),
    // Team(),
    Commitee(),
    BottomBar(),
  ];

  int val = 0;

  @override
  Widget build(BuildContext context) {
    Size iconSize = kIsMobile(context)
        ? Size.zero
        : Size.square(kSideBarWidth(context) * 0.6);
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animation!,
        builder: (context, child) {
          return Transform(
            origin:
                Offset(displayWidth(context) / 2, displayHeight(context) / 2),
            transform: Matrix4.identity()
              ..rotateZ(val == 0 ? _animation!.value : 0)
              ..rotateY(val == 1 ? _animation!.value : 0)
              ..rotateX(val == 2 ? _animation!.value : 0),
            child: child,
          );
        },
        child: Stack(
          children: [
            NotificationListener<ScrollUpdateNotification>(
              onNotification: (s) {
                setState(() {
                  if (s.scrollDelta! > 0)
                    _hide = s.metrics.pixels > displayHeight(context) / 2
                        ? true
                        : false;
                  else
                    _hide = s.metrics.pixels < displayHeight(context)
                        ? false
                        : true;
                });
                return true;
              },
              child: ScrollablePositionedList.builder(
                itemCount: _screen.length + 1,
                itemPositionsListener: itemPositionsListener,
                itemScrollController: itemScrollController,
                itemBuilder: (context, index) {
                  if (index == 0) return Home(scrollTo: scrollTo);
                  return _screen[index - 1];
                },
              ),
            ),
            SideBar(
              size: Size(kSideBarWidth(context), displayHeight(context)),
              hide: _hide,
              onTap: () {
                if (_controller!.isDismissed) {
                  setState(() {
                    val = math.Random().nextInt(3);
                  });
                  _controller!.forward();
                } else
                  _controller!.reverse();
              },
            ),
            if (_hide) logoButton(iconSize),
          ],
        ),
      ),
    );
  }

  Widget logoButton(Size iconSize) => GestureDetector(
        onTap: () {
          if (_hide)
            setState(() {
              _hide = false;
            });
        },
        child: Container(
          width: kSideBarWidth(context),
          child: Container(
            width: iconSize.width,
            height: iconSize.height,
            margin: EdgeInsets.only(top: iconSize.height * 0.8),
            child: SvgPicture.asset('assets/svg/logo1.svg'),
          ),
        ),
      );
}
