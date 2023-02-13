import 'package:day23/color/color_constant.dart';
import 'package:day23/pages/onboarding/onboarding_one.dart';
import 'package:day23/pages/stepper/stepper_four.dart';
import 'package:day23/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SteeperThreePage extends StatelessWidget {
  const SteeperThreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(12.0),
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
                SvgPicture.asset("assets/s3.svg",),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: Text("Create Your Own Team?",style: myStyle(16, fontColor),)),
            SizedBox(
              height: 20,
            ),
            Text("Your Team Name", style: myStyle(16, fontColor)),
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
                hintText: "e.g Rahul Team",
                prefixIcon: Icon(
                  Icons.key,
                  color: boxFontColor,
                ),
                hintStyle: TextStyle(
                  color: boxFontColor,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Custom_Buttom(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SteeperFourPage()),
                  );
                },
                isBlue: true,
                title: "Continue"
            ),
          ],
        ),
      ),
    ));
  }
}
