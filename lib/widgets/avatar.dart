import 'package:flutter/material.dart';
import 'package:facebook_clone/assets.dart';

class Avatar extends StatelessWidget {
  final String photoName;
  final bool onlineStatus;
  final bool dpBorder;
  final double avatarHeight;
  final double avatarWidth;

  Avatar({this.photoName, this.onlineStatus, this.dpBorder = false,this.avatarHeight=50,this.avatarWidth=50});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: dpBorder == true
                ? Border.all(color: Colors.blueAccent, width: 3)
                : Border(),
          ),
          padding: EdgeInsets.only(right: 3, left: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              100,
            ),
            child: Image.asset(
              photoName,
              height: avatarHeight,
              width: avatarWidth,
            ),
          ),
        ),
        onlineStatus == true
            ? Positioned(
                right: 1.5,
                bottom: 2,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              )
            : SizedBox(), //,using ternary for onlineindicator display
      ],
    );
  }
}
