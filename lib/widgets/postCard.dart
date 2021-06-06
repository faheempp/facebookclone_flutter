import 'package:flutter/material.dart';
import 'package:facebook_clone/assets.dart';

import 'avatar.dart';

class PostCard extends StatelessWidget {
  final String avatarPhoto;
  final String profileName;
  final String postTime;
  final String postCaption;
  final String postImageName;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  PostCard({this.avatarPhoto, this.profileName, this.postCaption,this.postTime,
    this.postImageName,this.likeCount,this.commentCount,this.shareCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[700],
            blurRadius: .8, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(0.0, 0.0),
          )
        ],
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          postCardHeader(),
          postDescription(),
          postImage(),
          footerSection(),
          Divider(height: 2, color: Colors.grey,),
          lcsButtons(),
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 0, right: 10, bottom: 2, left: 10),
      leading: Avatar(photoName: avatarPhoto, onlineStatus: false),
      trailing: Icon(Icons.more_horiz),
      title: Text(
        profileName,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16.5,
        ),
      ),
      subtitle: Row(
        children: [
          Text(postTime),Text(" • "),
          Icon(
            Icons.public,
            size: 15,
          )
        ],
      ),
    );
  }
  Widget postDescription(){
    return postCaption !=null && postCaption!=""? Container(
      padding: EdgeInsets.only(top: 0, right: 15, bottom: 5, left: 15),
      child: Text(
        postCaption,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    ): SizedBox();
  }

  Widget lcsButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton.icon(
          onPressed: () {
            print("liked");
          },
          icon: Icon(
            Icons.thumb_up_alt_outlined,
            color: Colors.grey[800],
          ),
          label: Text(
            "Like",
            style: TextStyle(color: Colors.grey[800]),
          ),
        ),
        TextButton.icon(
          onPressed: () {
            print("Comment button");
          },
          icon: Icon(
            Icons.messenger_outline_rounded,
            color: Colors.grey[800],
          ),
          label: Text(
            "Comment",
            style: TextStyle(color: Colors.grey[800]),
          ),
        ),
        TextButton.icon(
          onPressed: () {
            print("share");
          },
          icon: Icon(
            Icons.forward_5_outlined,
            color: Colors.grey[800],
          ),
          label: Text(
            "Share",
            style: TextStyle(color: Colors.grey[800]),
          ),
        )
      ],
    );
  }
  Widget postImage(){
    return Container(
        child: Image.asset(postImageName,));
  }
  Widget footerSection(){
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Row(
              children: [
                Container(padding: EdgeInsets.all(3),
                 child: Icon(Icons.thumb_up,color: Colors.white,size: 12,),
                  decoration: BoxDecoration(
                   color: Colors.blueAccent,
                   borderRadius: BorderRadius.circular(100),
                   border: Border.all(color: Colors.white,width:2)
                 ),
               ),
                Container(padding: EdgeInsets.all(3),
                 child: Icon(Icons.favorite,color: Colors.white,size: 12,),
                 decoration: BoxDecoration(
                    color: Colors.redAccent,
                   borderRadius: BorderRadius.circular(100),
                   border: Border.all(color: Colors.white,width:2)
                   ),
                 ),
              footerText(likeCount),
                ],
             ),

          Container(
            child: Row(
              children: [
                footerText(commentCount+" comments"),
                footerText(" • "),
                footerText(shareCount+" shares"),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget footerText(String textContent){
    return Text(textContent,
      style: TextStyle(
        color: Colors.grey[900],
        fontSize: 15,
      ),
    );
  }
}
