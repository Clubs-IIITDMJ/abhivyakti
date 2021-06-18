import 'package:abhivyakti_app/core/constants.dart';
import 'package:abhivyakti_app/core/icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 100, top: 100),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.black12, width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'CONTACT US',
                style: TextStyle(fontSize: 48),
              ),
              SizedBox(width: 100),
              IconsData.sharkDoodle,
            ],
          ),
          SizedBox(height: 70),
          Row(
            children: [
              Text(
                'ABHIVYAKTI - THE ARTS CLUB',
                style: TextStyle(fontSize: 30),
              ),
              Spacer(),
              Text(
                'Instagram',
                style: TextStyle(fontSize: 24, color: kRed2),
              ),
              SizedBox(width: 40),
              Text(
                'Discord',
                style: TextStyle(fontSize: 24, color: kBlue),
              ),
              SizedBox(width: 40),
              Text(
                'Facebook',
                style: TextStyle(fontSize: 24, color: kBlue2),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'PDPM IIITDM JABALPUR',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 30),
          Text(
            'abhivyakti.iiitdmj.ac.in',
            style: TextStyle(fontSize: 24, color: kRed),
          ),
          SizedBox(height: 50),
          Row(
            children: [
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 40),
                height: 208,
                child: Image.asset(IconsData.iiitAsset),
              ),
              SizedBox(width: 30),
              Image.asset(IconsData.logo2Asset),
            ],
          ),
        ],
      ),
    );
  }
}
