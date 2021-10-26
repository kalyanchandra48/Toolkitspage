import 'package:flutter/material.dart';
import 'Clippath.dart';
import 'dart:ui';

class Tools extends StatelessWidget {
  List<Color> color = [
    Color(0xB3C780FF),
    Color(0xffB4DD10),
    Color(0xB3FFBA39),
    Color(0xff71E3CF),
    Color(0xD9DB5B98),
    Color(0xD95AB7E3),
    Color(0xD9FBE958),
  ];
  List<String> image = [
    'assets/tool1.png',
    'assets/tool2.png',
    'assets/tool3.png',
    'assets/tool4.png',
    'assets/tool5.png',
    'assets/tool6.png',
    'assets/tool7.png'
  ];
  List<String> text = [
    'Healthy Entrepreneur',
    'Know Your Customers',
    'Manage Your Money',
    'Map Out Your Plan ',
    'Build your team ',
    'Process and Duplication ',
    'Delegate and Improve '
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 7,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, i) {
          return SizedBox(
            height: 10,
          );
        },
        itemBuilder: (context, i) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Color(0xffF2F2F2)),
            height: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 24),
                  width: 160,
                  child: Text(
                    text[i],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Curvedcontainer(
                  image: Image.asset(image[i]),
                  color: color[i],
                ),
              ],
            ),
          );
        });
  }
}
