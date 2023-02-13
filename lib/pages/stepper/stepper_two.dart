import 'package:day23/color/color_constant.dart';
import 'package:day23/pages/onboarding/onboarding_one.dart';
import 'package:day23/pages/stepper/stepper_three.dart';
import 'package:day23/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SteeperTwoPage extends StatelessWidget {
  const SteeperTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(12.0),
        child: Column(
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
                SvgPicture.asset("assets/s2.svg",),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Custom_Buttom(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SteeperThreePage()),
                  );
                },
                isBlue: true,
                title: "Create Your Own Team"
            ),
            SizedBox(
              height: 20,
            ),
            Text("Or",style: myStyle(16, fontColor),),
            SizedBox(
              height: 20,
            ),
            Custom_Buttom(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SteeperThreePage()),
                  );
                },
                isBlue: false,
                title: "Join Team"
            ),
          ],
        ),
      ),
    ));
  }
}
