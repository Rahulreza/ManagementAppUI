import 'package:day23/color/color_constant.dart';
import 'package:day23/widgets/const.dart';
import 'package:flutter/material.dart';

class Calender extends StatelessWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: boxFontColor,
      child: Center(
        child: Text(
          "Project in Developing",style: myStyle(16, fontColor),
        ),
      ),
    );
  }
}
