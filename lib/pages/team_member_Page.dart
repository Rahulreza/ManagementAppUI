import 'package:day23/color/color_constant.dart';
import 'package:day23/invite_member_page.dart';
import 'package:day23/widgets/const.dart';
import 'package:day23/widgets/demo_list.dart';
import 'package:flutter/material.dart';

class TeamMemberPage extends StatelessWidget {
  const TeamMemberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
            showModalBottomSheet(context: context, builder: (context){
              return InviteMemberPage();
            });
          },
          backgroundColor: Color(0xff246BFD),
          child:  Icon(Icons.add),
        ),
        body: SingleChildScrollView(
          //physics: NeverScrollableScrollPhysics(),

          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                    Text(
                      "Rahul Team",
                      style: myStyle(16, fontColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height:MediaQuery.of(context).size.height*20,

                    child: GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: myList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.all(12),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: boxColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Stack(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: boxFontColor,
                                        radius: 15,
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                          child: Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: myList[index].color,
                                        ),
                                      ))
                                    ],
                                  ),
                                  Icon(Icons.menu,color: fontColor,size: 30,)
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text("${myList[index].taskName}",style: myStyle(16, fontColor),),
                              Text("${myList[index].email}",style: myStyle(12, fontColor),),
                            ],
                          ),
                        );
                      },
                    )),
                SizedBox(
                  height: 20,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
