import 'package:facebook_clone/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:facebook_clone/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(width: 1,color: Colors.grey[400],)
          ),
        ),

        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularButton(
                iconName: Icons.home,
                buttonColor: Colors.grey[700],
                buttonIconSize: 30,
                buttonAction: () {
                  print("home");
                }
            ),
            CircularButton(
                iconName: Icons.video_library,
                buttonColor: Colors.grey[800],
                buttonIconSize: 30,
                buttonAction: () {
                  print("home");
                }
            ),
            CircularButton(
                iconName: Icons.group,
                buttonColor: Colors.grey[800],
                buttonIconSize: 30,
                buttonAction: () {
                  print("group");
                }
            ),
            CircularButton(
                iconName: Icons.home_work_sharp,
                buttonColor: Colors.grey[800],
                buttonIconSize: 30,
                buttonAction: () {
                  print("home");
                }
            ),
            CircularButton(
                iconName: Icons.add_alert,
                buttonColor: Colors.grey[800],
                buttonIconSize: 30,
                buttonAction: () {
                  print("home");
                }
            ),
            CircularButton(
                iconName: Icons.menu,
                buttonColor: Colors.grey[800],
                buttonIconSize: 30,
                buttonAction: () {
                  print("home");
                }
            ),
          ],
        ),
    );
  }
}
