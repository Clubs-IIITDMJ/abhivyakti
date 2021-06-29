import 'dart:ui' as ui;
import 'dart:html';
import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:abhivyakti_app/core/strings.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  int type = 0;
  double _left = 0, _top = 0;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      return Container();
    });
  }

  Widget content() => Container(
        padding: EdgeInsets.only(left: _left, top: _top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              kNews,
              style: type == 2
                  ? kTitleMobile
                  : type == 1
                      ? kTitleTablet
                      : kTitle,
            ),
            SizedBox(height: type == 0 ? 45 : 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: DiscordApp(type: type),
                ),
                SizedBox(width: 90),
                if (type != 2)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      headText('DISCORD'),
                      headText('ANNOUNCEMENTS'),
                    ],
                  ),
              ],
            )
          ],
        ),
      );
  Text headText(String title) {
    return Text(
      '$title',
      style: TextStyle(
        fontSize: displayWidth(context) > 1078
            ? 30
            : displayWidth(context) > 988
                ? 20
                : displayWidth(context) > 988
                    ? 12
                    : 0,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}

class DiscordApp extends StatefulWidget {
  final int? type;
  const DiscordApp({Key? key, this.type}) : super(key: key);

  @override
  _DiscordAppState createState() => _DiscordAppState();
}

class _DiscordAppState extends State<DiscordApp> {
  Widget? _iframeWidget;

  final IFrameElement _iframeElement = IFrameElement();

  @override
  void initState() {
    super.initState();

    // <iframe src="https://discord.com/widget?id=786492053588148234&theme=dark"
    //width="350" height="500" allowtransparency="true" frameborder="0"
    //sandbox="allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts"></iframe>

    _iframeElement.height = '500';
    _iframeElement.width = '350';

    _iframeElement.src =
        "https://discord.com/widget?id=786492053588148234&theme=dark";
    _iframeElement.style.border = 'none';
    _iframeElement.sandbox!.add('allow-popups');
    _iframeElement.sandbox!.add('allow-popups-to-escape-sandbox');
    _iframeElement.sandbox!.add('allow-same-origin');
    _iframeElement.sandbox!.add('allow-scripts');

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iframeElement,
    );

    _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement',
    );
  }

  @override
  Widget build(BuildContext context) {
    double _h = widget.type == 0
        ? 600
        : widget.type == 1
            ? 500
            : 400;
    double _w = widget.type == 0
        ? 600
        : widget.type == 1
            ? 400
            : 250;
    return Center(
      child: SizedBox(
        height: _h,
        width: _w,
        child: _iframeWidget,
      ),
    );
  }
}
