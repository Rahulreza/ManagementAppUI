import 'dart:math';

import 'package:day23/pages/onboarding/onboarding_two.dart';
import 'package:day23/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

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
                  "Update Progress Your Work for The Team",
                  style: myStyle(36, Color(0xffE4E4E6)),
                ),
                SizedBox(height: 32,),
                SvgPicture.asset(
                  "assets/slider1.svg",
                ),
                SizedBox(height: 36,),
                Custom_Buttom(
                  onTap: (){},
                  isBlue: true,
                  title: "Sign Up",
                ),
                SizedBox(height: 10,),
                // MaterialButton(onPressed: (){},
                // minWidth: double.infinity,
                //   padding: EdgeInsets.only(
                //     top: 17,
                //     right: 128,
                //     left: 128,
                //     bottom: 17
                //   ),
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(28),
                //     side: BorderSide(
                //       color: Color(0xffFFFFFF)
                //     )
                //   ),
                //   color: Colors.transparent,
                //   child: Text("Log In",style: myStyle(17, Color(0xffFFFFFF)),),
                // ),
                Custom_Buttom(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  OnBoardingPage2()),
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

class Custom_Buttom extends StatelessWidget {
   Custom_Buttom({
    super.key,this.title,this.onTap,  this.isBlue
  }) ;



  String ?title;
  VoidCallback ?onTap;
  bool? isBlue;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onTap,
    minWidth: double.infinity,
      padding: EdgeInsets.only(
        top: 17,
        right: 128,
        left: 128,
        bottom: 17
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: isBlue==true?Colors.transparent:Color(0xffFFFFFF)),
        borderRadius: BorderRadius.circular(28),
      ),
      color: isBlue==true?Color(0xff246BFD):Colors.transparent,
      child: Text("$title",style: myStyle(17,Color(0xffFFFFFF) ),),
    );
  }
}
