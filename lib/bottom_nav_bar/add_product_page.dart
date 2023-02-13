import 'package:day23/color/color_constant.dart';
import 'package:day23/pages/onboarding/onboarding_one.dart';
import 'package:day23/pages/team_member_Page.dart';
import 'package:day23/widgets/const.dart';
import 'package:flutter/material.dart';

class AddPorductPage extends StatelessWidget {
  const AddPorductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
        ),
        padding: EdgeInsets.all(12),
        height: 1200,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add New Project",
                  style: myStyle(16, fontColor),
                ),
                Icon(
                  Icons.cancel,
                  color: Colors.white,
                  size: 15,
                ),

              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Project Name", style: myStyle(16, fontColor)),
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
                hintText: "Enter Project Name",
                prefixIcon: Icon(
                  Icons.shopping_bag_sharp,
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
            Text("Assign To", style: myStyle(16, fontColor)),
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
                hintText: "Select Your Team",
                prefixIcon: Icon(
                  Icons.person_add_alt,
                  color: boxFontColor,
                ),
                hintStyle: TextStyle(
                  color: boxFontColor,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ), SizedBox(
              height: 20,
            ),
            Text("Progress", style: myStyle(16, fontColor)),
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
                hintText: "Ongoing",
                prefixIcon: Icon(
                  Icons.delivery_dining,
                  color: boxFontColor,
                ),
                hintStyle: TextStyle(
                  color: boxFontColor,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ), SizedBox(
              height: 20,
            ),
            Text("Timelines", style: myStyle(16, fontColor)),
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
                hintText: "14 January 2023",
                prefixIcon: Icon(
                  Icons.calendar_month,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.insert_link_outlined,
                  color: Colors.white,
                  size: 15,
                ),

              ],
            ),
                Text(
                  "Attched Files",
                  style: myStyle(16, fontColor),
                ),

            SizedBox(
              height: 20,
            ),
            Custom_Buttom(
              onTap: () {
               const snackBar = SnackBar(content: Text('Save Sucessfull'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => TeamMemberPage()),
               );
      },

              isBlue: true,
              title: "Save",
            ),
          ],
        ),

      ),
    );
  }
}
