import 'dart:math';

import 'package:day23/pages/log_signup/login_page.dart';
import 'package:day23/pages/onboarding/onboarding_one.dart';
import 'package:day23/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingPage3 extends StatelessWidget {
  const OnBoardingPage3({Key? key}) : super(key: key);

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
                  "Get Notified when you Get a New Assignment",
                  style: myStyle(36, Color(0xffE4E4E6)),
                ),
                SizedBox(height: 32,),
                SvgPicture.asset(
                  "assets/slider3.svg",
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
                      MaterialPageRoute(builder: (context) =>  LoginPage()),
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