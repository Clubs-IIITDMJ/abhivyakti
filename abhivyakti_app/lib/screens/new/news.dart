import 'package:abhivyakti_app/core/responsive.dart';
import 'package:flutter/cupertino.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context),
    );
  }
}
