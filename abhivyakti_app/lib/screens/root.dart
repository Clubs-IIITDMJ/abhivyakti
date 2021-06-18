import 'package:abhivyakti_app/screens/about/about.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:abhivyakti_app/core/responsive.dart';
import 'package:abhivyakti_app/screens/home/home.dart';
import 'package:abhivyakti_app/screens/home/sidebar.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          controller: _controller,
          child: Stack(
            children: [
              // SideBar(),
              Home(),
              About(),
            ],
          ),
        ),
      ),
    );
  }
}
