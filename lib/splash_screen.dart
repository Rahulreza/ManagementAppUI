import 'package:day23/color/color_constant.dart';
import 'package:day23/pages/onboarding/onboarding_one.dart';
import 'package:day23/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width/20,
            ),
           Column(
             children: [

               Container(
                 height: 96,
                 width: 96,
                 decoration: BoxDecoration(
                   color: boxColor,
                   borderRadius: BorderRadius.circular(8),
                 ),
                 child: SvgPicture.asset(
                   "assets/group.svg",
                   height: 30,
                   width: 15,
                 ),
               ),
               SizedBox(height: 20),
               Text("RANCANG",style: myStyle(36,fontColor),),
               SizedBox(height: 5),
               Text("Your Personal Task Manager",style: myStyle(17,fontColor),),
             ],
           ),

            Custom_Buttom(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  OnBoardingPage()),
                );
              },
              isBlue: false,
              title: "Getting Started",
            ),
          ],
        ),
      ),
    );
  }
}
