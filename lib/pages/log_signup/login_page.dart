import 'package:day23/color/color_constant.dart';
import 'package:day23/pages/onboarding/onboarding_one.dart';
import 'package:day23/pages/log_signup/sign_up.dart';
import 'package:day23/widgets/const.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.cancel,
                    color: Colors.white,
                    size: 15,
                  ),
                  Text(
                    "Sign Up",
                    style: myStyle(16, fontColor),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("Your Email Address", style: myStyle(16, fontColor)),
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
                  hintText: "Enter your email address",
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
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                isBlue: true,
                title: "Log In",
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Forgot Your Password",
                  style: myStyle(16, fontColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
