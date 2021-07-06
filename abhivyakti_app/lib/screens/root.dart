import 'package:abhivyakti_app/core/responsive.dart';
import 'package:abhivyakti_app/screens/about/about.dart';
import 'package:abhivyakti_app/screens/art/art.dart';
import 'package:abhivyakti_app/screens/gallery/gallery.dart';
import 'package:abhivyakti_app/screens/home/bottombar.dart';
import 'package:abhivyakti_app/screens/new/news.dart';
import 'package:abhivyakti_app/screens/team/team.dart';
import 'package:flutter/material.dart';
import 'package:abhivyakti_app/screens/home/home.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Home(),
          About(),
          Gallery(),
          // Art(),
          // News(),
          // Team(),
          // Commitee(),
          // BottomBar(),
        ],
      ),
    );
  }
}


// TODO: home