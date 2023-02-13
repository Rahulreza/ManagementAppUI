
import 'package:day23/bottom_nav_bar/add_product_page.dart';
import 'package:day23/bottom_nav_bar/calender.dart';
import 'package:day23/bottom_nav_bar/my_task.dart';
import 'package:day23/bottom_nav_bar/profile.dart';
import 'package:day23/bottom_nav_bar/project.dart';
import 'package:day23/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarDemo extends StatefulWidget {
  const BottomNavBarDemo({Key? key}) : super(key: key);

  @override
  _BottomNavBarDemoState createState() => _BottomNavBarDemoState();
}

class _BottomNavBarDemoState extends State<BottomNavBarDemo> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
 int selectedItem=2;


  PageController pageController = PageController(initialPage: 0);

  List<Widget> pages = [MyTask(),Calender(),Project(),Profile()];

  void onPageChange(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldKey,
     // drawer: DrawerWidget(),

      floatingActionButton: FloatingActionButton(
        isExtended: true,

        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,size: 30,
          color: Colors.white,
        ),
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context){
            return  AddPorductPage();
          });

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChange,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black54,
        child: Padding(
          padding: EdgeInsets.only(bottom: 8, top: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 0;
                    pageController!.jumpToPage(0);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "assets/group.svg",
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "MyTask",
                      style: myStyle(  14,Colors.white70),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 1;
                    pageController!.jumpToPage(1);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "assets/calender.svg",
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Calender",
                      style: myStyle(  14,Color(0xff8A8A8E)),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 22,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 2;
                    pageController!.jumpToPage(2);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "assets/myTask.svg",
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Project",
                      style: myStyle(  14,Color(0xff8A8A8E)),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 3;
                    pageController!.jumpToPage(3);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "assets/profile.svg",
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Profile",
                      style: myStyle( 14,Color(0xff8A8A8E)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
