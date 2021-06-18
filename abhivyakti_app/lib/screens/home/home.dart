import 'package:abhivyakti_app/core/responsive.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: displayWidth(context) * 0.13),
      color: Colors.blue,
    );
  }
}
