import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/assets.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        tileColor: Colors.white,
        leading: Avatar(photoName: beckamdp,onlineStatus:false),
        title: TextField(
          style: TextStyle(fontSize: 19.5),
          decoration: InputDecoration(
            hintText: "Write something here...",
            hintStyle: TextStyle(
              color: Colors.grey[700],
            ),
            hintMaxLines: 2,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black87,
              ),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.photo_library_outlined,
            size: 35,
            semanticLabel: "Add Photo",
          ),
          onPressed: () {
            print("addphoto");
          },
        ));
  }
}
