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
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: content(
        space: Size(15, 15),
        size: Size(300, 300),
        titleStyle: kTitleMobile,
        bodyStyle: kBodyMobile,
        padding: EdgeInsets.only(left: 15, top: 20),
      ),
      tablet: content(
        space: Size(25, 25),
        size: Size(350, 500),
        titleStyle: kTitleTablet,
        bodyStyle: kBodyTablet,
        padding: EdgeInsets.only(left: 25, top: 30),
      ),
      desktop: content(
        space: Size(30, 30),
        size: Size(500, 700),
        titleStyle: kTitle,
        bodyStyle: kBody,
        padding: EdgeInsets.only(left: 50, top: 40),
      ),
    );
  }

  Widget content({
    TextStyle? titleStyle,
    TextStyle? bodyStyle,
    Size space = const Size(0, 0),
    Size size = const Size(0, 0),
    EdgeInsets? padding,
  }) =>
      AnimatedContainer(
        duration: Duration(milliseconds: 250),
        padding: padding,
        width: displayWidth(context),
        height: displayHeight(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              kNews,
              style: titleStyle,
            ),
            SizedBox(height: space.height),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 100),
                    height: size.height,
                    width: size.width,
                    child: DiscordApp(
                      size: size,
                    ),
                  ),
                  // SizedBox(width: kIsMobile(context) ? 0 : space.width),
                  // Container(
                  //   width: kIsMobile(context) ? 0 : null,
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       headText('DISCORD', bodyStyle!),
                  //       headText('ANNOUNCEMENTS', bodyStyle),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            )
          ],
        ),
      );
  Text headText(String title, TextStyle style) {
    return Text('$title', style: style);
  }
}

class DiscordApp extends StatelessWidget {
  final Size? size;
  DiscordApp({
    Key? key,
    this.size = const Size(300, 300),
  }) : super(key: key);
  Widget? _iframeWidget;

  final IFrameElement _iframeElement = IFrameElement();

  @override
  Widget build(BuildContext context) {
    _iframeElement.height = '${size!.height}';
    _iframeElement.width = '${size!.width}';

    _iframeElement.src =
        "https://discord.com/widget?id=786492053588148234&theme=light";
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

    return Container(
      child: _iframeWidget!,
    );
  }
}
