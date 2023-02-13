import 'package:flutter/material.dart';
import 'package:day23/color/color_constant.dart';
import 'package:day23/widgets/const.dart';
import 'package:day23/widgets/demo_list.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios,color: fontColor,),
                      Text(
                        "Project",
                        style: myStyle(16, fontColor),
                      ),
                      Icon(Icons.menu,color: fontColor,),
                    ],
                  ),
                ),

                Container(
                  height: 60,
                  padding: EdgeInsets.only(left: 16),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(color: Colors.transparent),
                          width: 128,
                          height: 57,
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: myList[index].color,
                                ),
                                width: 5,
                                margin: EdgeInsets.symmetric(vertical: 12),
                                height: double.infinity,
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height:40,
                                      width:40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: myList[index].color,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "${myList[index].percentage}",
                                          style: myStyle(16, fontColor),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "${myList[index].type}",
                                      style: myStyle(12, fontColor),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Task",
                        style: myStyle(16, fontColor),
                      ),
                      Text(
                        "See More",
                        style: myStyle(16, fontColor),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: myList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        padding: EdgeInsets.all(12),
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: boxColor,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.check_box_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "${myList[index].taskName}",
                                  style: myStyle(16, fontColor),
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 2),
                                  child: Text("${myList[index].title}",
                                      style: myStyle(16, myList[index].color)),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width/3,
                                  child: Expanded(
                                    flex: 10,
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 8,

                                          decoration: BoxDecoration(
                                            color: myList[index]
                                                .color
                                                .withOpacity(0.3),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                        ),
                                        LayoutBuilder(
                                            builder: (context, constraints) {
                                              return Container(
                                                height: 8,
                                                width: constraints.maxWidth *
                                                    myList[index].percentage /
                                                    100,
                                                decoration: BoxDecoration(
                                                  color: myList[index].color,
                                                  borderRadius:
                                                  BorderRadius.circular(16),
                                                ),
                                              );
                                            })
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  "${myList[index].percentage}/100",
                                  style: myStyle(16, Colors.white),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 5,
                                      backgroundColor: myList[index].color,
                                    ),
                                    Text("${myList[index].percentage}",style: myStyle(12, fontColor),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 5,
                                    ),CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 5,
                                    ),CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 5,
                                    ),CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 5,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ));
  }
}
