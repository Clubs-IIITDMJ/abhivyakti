import 'dart:html';
import 'dart:ui' as ui;
import 'package:abhivyakti_app/core/constants.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 130, right: 50, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('NEWS AND EVENTS', style: kTitle),
          SizedBox(height: 45),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: DiscordApp(),
              ),
              SizedBox(width: 90),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DISCORD',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    'ANNOUNCEMENTS',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DiscordApp extends StatefulWidget {
  const DiscordApp({Key? key}) : super(key: key);

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
    return Center(
      child: SizedBox(
        height: 600,
        width: 600,
        child: _iframeWidget,
      ),
    );
  }
}
