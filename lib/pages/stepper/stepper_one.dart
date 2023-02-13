import 'package:day23/color/color_constant.dart';
import 'package:day23/pages/onboarding/onboarding_one.dart';
import 'package:day23/pages/stepper/stepper_two.dart';
import 'package:day23/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StepperOnePage extends StatelessWidget {
  const StepperOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 15,
                  ),
                 Spacer(),
                 SvgPicture.asset("assets/s1.svg",),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Complete Your Profile",style: myStyle(16, fontColor),),
                    CircleAvatar(
                      backgroundColor: boxFontColor,
                      radius: 30,
                      child: Icon(Icons.photo_camera_rounded,color: fontColor,),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Your Full Name", style: myStyle(16, fontColor)),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: "Enter your full name",
                  prefixIcon: Icon(
                    Icons.message,
                    color: boxFontColor,
                  ),
                  hintStyle: TextStyle(
                    color: boxFontColor,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Your Password", style: myStyle(16, fontColor)),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  hintText: "Enter your password",
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: boxFontColor,
                  ),
                  hintStyle: TextStyle(
                    color: boxFontColor,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Custom_Buttom(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SteeperTwoPage()),
                  );
                },
                isBlue: true,
                title: "Continue"
              ),
            ],
          ),
        ),
      ),
    );
  }
}
