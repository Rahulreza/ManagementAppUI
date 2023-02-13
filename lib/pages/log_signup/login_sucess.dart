import 'package:day23/bottom_nav_bar/bottom_nav.dart';
import 'package:day23/color/color_constant.dart';
import 'package:day23/pages/onboarding/onboarding_one.dart';
import 'package:day23/widgets/const.dart';
import 'package:flutter/material.dart';

class LogInSucess extends StatelessWidget {
  const LogInSucess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SimpleDialog(

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20),),
        ),

        backgroundColor: dialogBGColor,
        title:  CircleAvatar(
          backgroundColor: boxFontColor,
          radius: 40,

        ),
        children: <Widget>[
          Center(child: Text('Congratulations!',style: myStyle(24, fontColor))),
          Center(child: Text("Parto team was created successfully, create your latest project so you can work with your team.",style: myStyle(16, fontColor),)),
          Custom_Buttom(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavBarDemo()),
                );
              },
              isBlue: true,
              title: "Continue"
          ),
        ],

    );
  }
}
