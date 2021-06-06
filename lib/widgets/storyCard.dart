import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/circularButton.dart';

import 'avatar.dart';

class StoryCard extends StatelessWidget {
  final String storyLabel;
  final String dp;
  final String storyImage;

  StoryCard({
    this.storyLabel,
    this.dp,
      this.storyImage,}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        image: DecorationImage(  image: AssetImage(storyImage,),  fit: BoxFit.cover, ),
        borderRadius: BorderRadius.circular(10),
        //color: containerColor,
      ),
      child: Stack(
        children: [
          dp == null
              ? Positioned(
                  top: 0,
                  left: 0,
                  child: CircularButton(
                    buttonColor: Colors.blue,
                    iconName: Icons.add,
                    buttonIconSize: 26,
                    buttonAction: () {
                      print(storyLabel);
                    },
                    containerColor: Colors.grey[300],
                  ),
                )
              : Positioned(
                  child: Avatar(photoName:dp, onlineStatus:false, dpBorder: true,avatarHeight: 40,avatarWidth: 40,),
                  top: 5,
                  left: 5,
                ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              storyLabel,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.grey[300],
              ),
            ),
          )
        ],
      ),
    );
  }
}
