import 'dart:math';

import 'package:day23/pages/onboarding/onboarding_one.dart';
import 'package:day23/pages/onboarding/onboarding_three.dart';
import 'package:day23/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingPage2 extends StatelessWidget {
  const OnBoardingPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Transform.rotate(
              angle: pi / 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff8E8E93),
                  borderRadius: BorderRadius.circular(40),
                ),
                height: 400,
                width: 480,
              ),
            ),
            top: -100,
          ),
          Padding(
            padding:  EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create a Task and Assign it to Your Team Members",
                  style: myStyle(36, Color(0xffE4E4E6)),
                ),
                SizedBox(height: 32,),
                SvgPicture.asset(
                  "assets/slider2.svg",
                ),
                SizedBox(height: 36,),
                Custom_Buttom(
                  onTap: (){},
                  isBlue: true,
                  title: "Sign Up",
                ),
                SizedBox(height: 10,),
                Custom_Buttom(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  OnBoardingPage3()),
                    );
                  },
                  isBlue: false,
                  title: "Log In",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}