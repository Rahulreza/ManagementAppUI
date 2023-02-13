import 'package:day23/bottom_nav_bar/bottom_nav.dart';
import 'package:day23/bottom_nav_bar/project.dart';
import 'package:day23/pages/log_signup/login_page.dart';
import 'package:day23/pages/log_signup/login_sucess.dart';
import 'package:day23/pages/onboarding/onboarding_one.dart';
import 'package:day23/pages/stepper/stepper_one.dart';
import 'package:day23/pages/team_member_Page.dart';
import 'package:day23/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
scaffoldBackgroundColor: Color(0xff191A22),
        primarySwatch: Colors.blue,
      ),
      home:  SplashScreen(),
    );
  }
}


