import 'package:facebook_clone/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String suggestionDp;
  final String suggestionName;
  final String mutFriendCount;
  SuggestionCard({this.suggestionDp,this.mutFriendCount,this.suggestionName});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(style: BorderStyle.solid,color: Colors.grey,width:1)
      ),
      width: 270,
      margin: EdgeInsets.only(left:5, right:5),
      child: Stack(
      children: [
        suggestionImage(),
        suggestionInfo(),
      ],
    ),
    );
  }
  Widget suggestionImage(){
    return Positioned(
      top:0,right: 0,left:0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),topRight: Radius.circular(15)
        ),
        child: Image.asset(
          suggestionDp,
          height: 270,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
  Widget suggestionInfo(){
    return Positioned(
      bottom: 10,left: 0,right: 0,
      child: Container(
        height: 120,
        color: Colors.white,
        child: Column(
          children: [
            ListTile(

              title: Text(
                suggestionName,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black),
              ),
              subtitle: Text(mutFriendCount+" mutual friends",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.grey[700]),
              ),
            ),
            Container(
              padding: EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  addFriendButton(),
                  removeButton(),
                ],
              ),
            ),
          ],
        ),
        ),
    );
  }
  Widget addFriendButton(){
    return TextButton.icon(
        onPressed: (){print("add friend");},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue[800])
        ),
        icon: Icon(Icons.person_add,color: Colors.white,),
        label: Text("Add Friend",
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
    );
  }
  Widget removeButton(){
    return TextButton(
      onPressed: (){print("remove");},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey[300])
      ),
      child: Text("Remove",
        style: TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
      ),
    );
  }
}
