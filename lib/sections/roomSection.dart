import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  Widget createRoomButton(){
    return Container(
      padding: EdgeInsets.only(right:5,left:5),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(color:Colors.blue[100], width:2,),
          padding: EdgeInsets.only(left: 10,right:10,top: 0,bottom: 0),
        ),
        onPressed: () {print("createroom");},
        icon: Icon(Icons.video_call, color: Colors.deepPurple,),
        label: Text("Create\nRoom", style: TextStyle(color: Colors.blue),),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
         createRoomButton(),
          Avatar(photoName:dsdpone,onlineStatus:true),
          Avatar(photoName:dsdptwo,onlineStatus: true,),
          Avatar(photoName:dsdptwo,onlineStatus: true,),
          Avatar(photoName:dsdpfour,onlineStatus:true,),
          Avatar(photoName:dsdpfive,onlineStatus:true,),
          Avatar(photoName:dsdpsix,onlineStatus:true,),

        ],
      ),
    );
  }
}
